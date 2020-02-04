function [laneSectionNr, laneID,roadID] = isOnRoad(obj,point)
    %ISONROAD Check if a point is located within a road
    %   Return the laneID, lanesectionNR and roadID if point is within road
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    laneSectionNr =[];
    laneID =[];
    roadID =[];
    if Utils.isInBbox(point,obj.bbox)
        [laneSectionNr, laneID] = obj.lanes.isOnLanes(point);
        if ~isempty(laneSectionNr) && ~isempty(laneID)
            roadID = repelem(obj.id,size(laneID,1))';
        end
    end
    
end

