function [laneID] = isOnLaneSection(obj,point)
    %ISONLANESECTION Check if a point is located within a laneSection
    %   Return the laneID
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    laneID = [];
    if Utils.isInBbox(point,obj.bbox)
        %Check Left
        if ~isempty(obj.left)
            for i=1:size(obj.left.lane,2)
                laneIDout = obj.left.lane{i}.isOnLane(point);
                if ~isempty(laneIDout)
                    laneID = [laneID;laneIDout];
                end
            end
        end
        %Check Right
        if ~isempty(obj.right)
            for i=1:size(obj.right.lane,2)
                laneIDout = obj.right.lane{i}.isOnLane(point);
                if ~isempty(laneIDout)
                    laneID = [laneID;laneIDout];
                end
            end
        end
    end
end

