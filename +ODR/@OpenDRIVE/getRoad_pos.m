function [laneSectionNr, laneID,roadID] = getRoad_pos(obj,point)
    %getRoad_pos Determine the roadID, laneID and laneSectionNr for a given
    %Point
    %   Will return nx1 ids for each output on which the point is located.
    %   Multiple cases possible for example in intersections
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------  
    
    % First check if a ROADS LANES LANESECTION OR LANES BBOX ENCOLSES THE
    % POINT, then perfrom inpolygon check
    
    % Run over all roads internal checking is realized as method in roads
    laneSectionNr=[];
    laneID=[];
    roadID=[];
    for i=1:size(obj.road,2)
        [laneSectionNrOut, laneIDOut,roadIDOut]  = obj.road{i}.isOnRoad(point);
        if ~isempty(roadIDOut)
            roadID = [roadID;roadIDOut];
            laneID = [laneID;laneIDOut];
            laneSectionNr = [laneSectionNr; laneSectionNrOut];
        end
    end
end

