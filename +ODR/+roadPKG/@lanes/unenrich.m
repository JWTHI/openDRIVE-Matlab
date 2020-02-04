function obj = unenrich(obj)
    %UNENRICH Remove points and meta from the given lanes
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    obj.laneOffsetLine =[];
    for i=1:size(obj.laneSection,2)
        obj.laneSection{i} = obj.laneSection{i}.unenrich();
    end
end

