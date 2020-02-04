function obj = enrich(obj, bCirc, referenceLine)
    %ENRICH Create the points and meta data of the lanes
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isempty(obj.laneOffsetLine)
        obj = obj.calcLaneOffsetLine(referenceLine);
    end
    
    if isempty(obj.sStepsL) || isempty(obj.sStepsR)
        [obj.sStepsR,obj.sStepsL,obj.sStepsC] = obj.createSsteps(referenceLine);
    end
    
    % enrich the lane sections
    for i=1:size(obj.laneSection,2)
        if isempty(obj.laneSection{i}.bbox)
            % No BBOX determined so far: Gnerate for each section and check
            % if valid
            obj.laneSection{i} = obj.laneSection{i}.enrich(obj.laneOffsetLine, referenceLine, obj.sStepsL(i:i+1),obj.sStepsR(i:i+1),obj.sStepsC(i:i+1));
            if ~Utils.circleBboxIntersection(obj.laneSection{i}.bbox,bCirc)
                % This section is irrelevant Remove the section and all other points
                obj.laneSection{i} = obj.laneSection{i}.unenrich();
            else
                minS = min([obj.sStepsL(i:i+1) obj.sStepsR(i:i+1) obj.sStepsC(i:i+1)]);
                maxS = max([obj.sStepsL(i:i+1) obj.sStepsR(i:i+1) obj.sStepsC(i:i+1)]);
                if ~Utils.circleRefLineIntersect(referenceLine(referenceLine(:,4)>=minS & referenceLine(:,4)<=maxS,1:2),bCirc)
                    obj.laneSection{i} = obj.laneSection{i}.unenrich();
                end
            end
        else
            % BBOX determine: Check each section if valid
            if Utils.circleBboxIntersection(obj.laneSection{i}.bbox,bCirc)
                % This section is relevant
                minS = min([obj.sStepsL(i:i+1) obj.sStepsR(i:i+1) obj.sStepsC(i:i+1)]);
                maxS = max([obj.sStepsL(i:i+1) obj.sStepsR(i:i+1) obj.sStepsC(i:i+1)]);
                if Utils.circleRefLineIntersect(referenceLine(referenceLine(:,4)>=minS & referenceLine(:,4)<=maxS,1:2),bCirc)
                    obj.laneSection{i} = obj.laneSection{i}.enrich(obj.laneOffsetLine, referenceLine, obj.sStepsL(i:i+1),obj.sStepsR(i:i+1),obj.sStepsC(i:i+1));
                else
                    obj.laneSection{i} = obj.laneSection{i}.unenrich();
                end
            else
                % This section is irrelevant
                obj.laneSection{i} = obj.laneSection{i}.unenrich();
            end
        end
        bboxLaneSections(:,i) = obj.laneSection{i}.bbox;
    end
    
    lanesBbox(1) = min(bboxLaneSections(1,:));
    lanesBbox(2) = max(bboxLaneSections(2,:));
    lanesBbox(3) = min(bboxLaneSections(3,:));
    lanesBbox(4) = max(bboxLaneSections(4,:));
    obj.bbox = lanesBbox;
end
