function [laneSectionNr, laneID] = isOnLanes(obj,point)
    %ISONLANES Check if a point is located within a lanes
    %   Return the laneID, lanesectionNR and roadID if point is within road
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    laneSectionNr = [];
    laneID = [];
    if Utils.isInBbox(point,obj.bbox)
        for i=1:size(obj.laneSection,2)
            laneIDout = obj.laneSection{i}.isOnLaneSection(point);
            if ~isempty(laneIDout)
                laneID = [laneID;laneIDout];
                laneSectionNr = [laneSectionNr; repelem(i,size(laneIDout,1))'];
            end
        end
    end
end

