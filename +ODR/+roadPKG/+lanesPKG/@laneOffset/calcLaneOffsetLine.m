function [offset] = calcLaneOffsetLine(obj,s,offset)
    %CALCLANEOFFSETLINE Get the laneOffset for given s points
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    ds = s - obj.s;
    dsC = ds(ds>=0);
    offset(ds>=0) = obj.a + obj.b*dsC + obj.c*dsC.^2 + obj.d*dsC.^3;
end

