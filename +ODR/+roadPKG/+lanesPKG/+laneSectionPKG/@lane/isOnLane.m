function laneID = isOnLane(obj,point)
    %ISONLANE  Check if point is located within the lane
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    laneID = [];
    % Check if in bbox
    if Utils.isInBbox(point,obj.bbox)
        % Check if in Poly
        poly = [[obj.boundaryLineIn(:,1);flipud(obj.boundaryLineOut(:,1))],...
            [obj.boundaryLineIn(:,2);flipud(obj.boundaryLineOut(:,2))]];
        if Utils.isInPoly(point,poly)
            laneID = obj.id;
        end
    end
end

