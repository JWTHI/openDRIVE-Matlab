function obj = enrich(obj, laneOthers, innerIds, laneOffsetLine, referenceLine, sSteps, direction,centerFlag)
    %ENRICH  Enrich the lane: Calculate the polygon
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isempty(obj.boundaryLineIn) || isempty(obj.boundaryLineOut)
        %Get the baundaryLines
        if isempty(innerIds)
            if centerFlag
                deltaReferenceLine = referenceLine(referenceLine(:,4)>=sSteps(1) & referenceLine(:,4)<=sSteps(2),:);
                obj.tPoints = deltaReferenceLine(:,3);
                obj.sPoints = deltaReferenceLine(:,4);
                deltaReferenceLine(:,4) = deltaReferenceLine(:,4) - sSteps(1);
                widthPoints = zeros(size(deltaReferenceLine,1),1);
                laneOffsetLineSub = laneOffsetLine(referenceLine(:,4)>=sSteps(1) & referenceLine(:,4)<=sSteps(2));
                obj.widthPoints = widthPoints;
                widthOffset = zeros(size(deltaReferenceLine,1),1);
                [obj.boundaryLineIn, obj.boundaryLineOut] = ...
                    obj.calcBoundaryLinePoints(...
                    widthOffset,...
                    laneOffsetLineSub,...
                    deltaReferenceLine,...
                    direction);
                minXIn = min(obj.boundaryLineIn(:,1)); minXOut = min(obj.boundaryLineOut(:,1));
                minYIn = min(obj.boundaryLineIn(:,2)); minYOut = min(obj.boundaryLineOut(:,2));
                maxXIn = max(obj.boundaryLineIn(:,1)); maxXOut = max(obj.boundaryLineOut(:,1));
                maxYIn = max(obj.boundaryLineIn(:,2)); maxYOut = max(obj.boundaryLineOut(:,2));
                obj.bbox(1) = min(minXIn,minXOut);
                obj.bbox(2) = max(maxXIn,maxXOut);
                obj.bbox(3) = min(minYIn,minYOut);
                obj.bbox(4) = max(maxYIn,maxYOut);
            else
                % First Lane
                if ~isempty(obj.width)
                    deltaReferenceLine = referenceLine(referenceLine(:,4)>=sSteps(1) & referenceLine(:,4)<=sSteps(2),:);
                    obj.tPoints = deltaReferenceLine(:,3);
                    obj.sPoints = deltaReferenceLine(:,4);
                    deltaReferenceLine(:,4) = deltaReferenceLine(:,4) - sSteps(1);
                    widthPoints = zeros(size(deltaReferenceLine,1),1);
                    laneOffsetLineSub = laneOffsetLine(referenceLine(:,4)>=sSteps(1) & referenceLine(:,4)<=sSteps(2));
                    %Get width as vector along the lane
                    for i=1:size(obj.width,2)
                        widthPoints = obj.width{i}.calcWidth(widthPoints,deltaReferenceLine);
                    end
                    obj.widthPoints = widthPoints;
                    widthOffset = zeros(size(deltaReferenceLine,1),1);
                    [obj.boundaryLineIn, obj.boundaryLineOut] = ...
                        obj.calcBoundaryLinePoints(...
                        widthOffset,...
                        laneOffsetLineSub,...
                        deltaReferenceLine,...
                        direction);
                    minXIn = min(obj.boundaryLineIn(:,1)); minXOut = min(obj.boundaryLineOut(:,1));
                    minYIn = min(obj.boundaryLineIn(:,2)); minYOut = min(obj.boundaryLineOut(:,2));
                    maxXIn = max(obj.boundaryLineIn(:,1)); maxXOut = max(obj.boundaryLineOut(:,1));
                    maxYIn = max(obj.boundaryLineIn(:,2)); maxYOut = max(obj.boundaryLineOut(:,2));
                    obj.bbox(1) = min(minXIn,minXOut);
                    obj.bbox(2) = max(maxXIn,maxXOut);
                    obj.bbox(3) = min(minYIn,minYOut);
                    obj.bbox(4) = max(maxYIn,maxYOut);
                elseif ~isempty(obj.border)
                    % TODO: Implement baundaryLines calculation if border is defined instead of width
                    warning('Boundary line calculation for a given border entry is not yet supported')
                end
            end
        else
            % Not the first lane, need to add the previous widths
            if ~isempty(obj.width)
                deltaReferenceLine = referenceLine(referenceLine(:,4)>=sSteps(1) & referenceLine(:,4)<=sSteps(2),:);
                obj.tPoints = deltaReferenceLine(:,3);
                obj.sPoints = deltaReferenceLine(:,4);
                deltaReferenceLine(:,4) = deltaReferenceLine(:,4) - sSteps(1);
                widthPoints = zeros(size(deltaReferenceLine,1),1);
                laneOffsetLineSub = laneOffsetLine(referenceLine(:,4)>=sSteps(1) & referenceLine(:,4)<=sSteps(2));
                %Get width as vector along the lane
                for i=1:size(obj.width,2)
                    widthPoints = obj.width{i}.calcWidth(widthPoints,deltaReferenceLine);
                end
                obj.widthPoints = widthPoints;
                % sum up of previous lanes
                widthOffset = zeros(size(deltaReferenceLine,1),1);
                for i=innerIds
                    widthOffset = widthOffset + laneOthers{i}.widthPoints;
                end
                [obj.boundaryLineIn, obj.boundaryLineOut] = ...
                    obj.calcBoundaryLinePoints(...
                    widthOffset,...
                    laneOffsetLineSub,...
                    deltaReferenceLine,...
                    direction);
                minXIn = min(obj.boundaryLineIn(:,1)); minXOut = min(obj.boundaryLineOut(:,1));
                minYIn = min(obj.boundaryLineIn(:,2)); minYOut = min(obj.boundaryLineOut(:,2));
                maxXIn = max(obj.boundaryLineIn(:,1)); maxXOut = max(obj.boundaryLineOut(:,1));
                maxYIn = max(obj.boundaryLineIn(:,2)); maxYOut = max(obj.boundaryLineOut(:,2));
                obj.bbox(1) = min(minXIn,minXOut);
                obj.bbox(2) = max(maxXIn,maxXOut);
                obj.bbox(3) = min(minYIn,minYOut);
                obj.bbox(4) = max(maxYIn,maxYOut);
            elseif ~isempty(obj.border)
                % TODO: Implement baundaryLines calculation if border is defined instead of width
                warning('Boundary line calculation for a given border entry is not yet supported')
            end
        end
    end
    if ~isempty(obj.roadMark)
        deltaReferenceLine = referenceLine(referenceLine(:,4)>=sSteps(1) & referenceLine(:,4)<=sSteps(2),:);
        deltaReferenceLineS = deltaReferenceLine(:,4) - sSteps(1);
        for i=1:size(obj.roadMark,2)
            if i<size(obj.roadMark,2)
                obj.roadMark{i} = obj.roadMark{i}.enrich(deltaReferenceLineS,obj.roadMark{i+1}.sOffset);
            else
                obj.roadMark{i} = obj.roadMark{i}.enrich(deltaReferenceLineS,deltaReferenceLineS(end));
            end
        end
        if isempty(obj.bbox)
            obj.bbox = nan(4,1);
        end
    end
    
