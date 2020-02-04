function [flag] = isInBbox(pos,bbox)
    %ISINBBOX Check if pos inside bbox
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    flag = false;
    if pos(1)>= bbox(1) && pos(1)<= bbox(2) && pos(2)>= bbox(3) && pos(2)<= bbox(4)
        flag = true;
    end
end

