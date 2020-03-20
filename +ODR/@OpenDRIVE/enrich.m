function obj = enrich(obj,bbox_in_m)
    %ENRICH Enriching a parsed map
    %   Enricht the map with points of lanes to plot if they are within the circle
    %   containing bbox.
    %   Special Cases:    isempty(bbox_in_m) --> Fullmap
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------    
    
    if isempty(bbox_in_m)
        bCirc = [];
    else
        delta(1) = (bbox_in_m(2)-bbox_in_m(1))/2;
        delta(2) = (bbox_in_m(4)-bbox_in_m(3))/2;
        bboxCenter(1) = bbox_in_m(1)+delta(1);
        bboxCenter(2) = bbox_in_m(3)+delta(2);
        radius = sqrt(delta(1)^2+delta(2)^2);
        bCirc = [bboxCenter,radius];
    end
    for i=1:size(obj.road,2)
        obj.road{i} = obj.road{i}.enrich(bCirc);
    end
end
