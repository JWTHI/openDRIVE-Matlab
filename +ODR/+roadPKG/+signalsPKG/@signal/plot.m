function plot(obj, road, fig)
    %PLOT  Plot the signal
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    figure(fig);
    % Determine if it is a special marking or a image sign
    %TODO: List:
    %   - Road requried as input? Remove if possible.
    %   - Finalize the signal plotting function
    %   - Constant color if scatter is used.
    %   - change orientation of images
    if ~isempty(road.planView.referenceLine)
        switch obj.type
            case '294' % Stopping line
                %Get closest available s
                [~,idx] = min(abs(road.planView.referenceLine(:,4)-obj.s));
                s = road.planView.referenceLine(idx,4);
                % Get direction
                if obj.orientation=='-'
                    % Get appropriate laneSection ID
                    if size(road.lanes.sStepsL,2) == 2
                        sectionID =1;
                    else
                        sectionID = min(find(road.lanes.sStepsL <= s,'last'),numel(road.lanes.sStepsL));
                    end
                    % Get all lane points wich are stopable ( drving cycling)
                    noLanes = size(road.lanes.laneSection{sectionID}.left.lane,2);
                    for i=1:noLanes
                        if strcmp(road.lanes.laneSection{sectionID}.left.lane{i}.type,'driving') || strcmp(road.lanes.laneSection{sectionID}.left.lane{i}.type,'biking')
                            %Get ,mathcin idx in bounderyline
                            innerIdx = find(road.lanes.laneSection{sectionID}.left.lane{i}.sPoints == s);
                            stopLinePoints(1,:) = road.lanes.laneSection{sectionID}.left.lane{i}.boundaryLineIn(innerIdx,:);
                            stopLinePoints(2,:) = road.lanes.laneSection{sectionID}.left.lane{i}.boundaryLineOut(innerIdx,:);
                            % Get the boundary points here
                            markerwidth = 0.5;
                            a=markerwidth;
                            currentLine = plot(stopLinePoints(:,1),stopLinePoints(:,2),...
                                'w','LineWidth',a);
                            currentLine.UserData = markerwidth;
                        end
                    end
                elseif obj.orientation=='+'
                    % Get appropriate laneSection ID
                    if size(road.lanes.sStepsR,2) == 2
                        sectionID =1;
                    else
                        sectionID = min(find(road.lanes.sStepsR <= s,'last'),numel(road.lanes.sStepsR));
                    end
                    % Get all lane points wich are stopable ( drving cycling)
                    noLanes = size(road.lanes.laneSection{sectionID}.right.lane,2);
                    for i=1:noLanes
                        if strcmp(road.lanes.laneSection{sectionID}.right.lane{i}.type,'driving') || strcmp(road.lanes.laneSection{sectionID}.right.lane{i}.type,'biking')
                            %Get ,mathcin idx in bounderyline
                            innerIdx = find(road.lanes.laneSection{sectionID}.right.lane{i}.sPoints == s);
                            stopLinePoints(1,:) = road.lanes.laneSection{sectionID}.right.lane{i}.boundaryLineIn(innerIdx,:);
                            stopLinePoints(2,:) = road.lanes.laneSection{sectionID}.right.lane{i}.boundaryLineOut(innerIdx,:);
                            % Get the boundary points here
                            markerwidth = 0.5;
                            a=markerwidth;
                            currentLine = plot(stopLinePoints(:,1),stopLinePoints(:,2),...
                                'w','LineWidth',a);
                            currentLine.UserData = markerwidth;
                        end
                    end
                else
                end
            case '297' % Arrows on Street
                %TODO Implement
                warning(['Plot for type ',obj.type,' not yet implemeted!'])
            case '299' % Stopping not allowed
                %TODO Implement
                warning(['Plot for type ',obj.type,' not yet implemeted!'])
            case '341' % Waiting Line
                %TODO Implement
                warning(['Plot for type ',obj.type,' not yet implemeted!'])
            otherwise % Gneral Sign as image
                % Calcualte the positioning of the signal
                %Get tangent vector
                [~,idx] = min(abs(road.planView.referenceLine(:,4)-obj.s));
                s = road.planView.referenceLine(idx,4);
                [tx,ty] = pol2cart(road.planView.referenceLine(idx,3),1);
                
                %Get normal vector
                n(:,1) = -ty;
                n(:,2) = tx;
                
                %Get delta of shifting base line (widthOffset + laneOffset)
                deltaPos = n.*obj.t;
                signPosition = road.planView.referenceLine(idx,1:2)+deltaPos;
                signSize = 0.80;
                % Check if sign data base is available and if specific sign is
                % there
                fileName = [obj.type,'.jpg'];
                if exist(fileName,'file')~=0
                    try
                        C = imread(fileName);
                        xPos = [signPosition(1)-signSize/2 signPosition(1)+signSize/2];
                        yPos = [signPosition(2)-signSize/2 signPosition(2)+signSize/2];
                        image(xPos,yPos,C)
                    catch
                        disp([fileName,' is not in the correct format'])
                        scatter(signPosition(1),signPosition(2))
                    end
                else
                    scatter(signPosition(1),signPosition(2))
                end
        end
        
    end
    
end

