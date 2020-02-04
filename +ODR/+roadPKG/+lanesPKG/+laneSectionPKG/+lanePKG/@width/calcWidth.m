function widthPoints = calcWidth(obj, widthPoints, deltaReferenceLine)
    %CALCWIDTH calculate the width per s of the given lane
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    ds = deltaReferenceLine(:,4)- obj.sOffset;
    dsC = ds(ds>=0);
    widthPoints(ds>=0) = obj.a + obj.b*dsC + obj.c*dsC.^2 + obj.d*dsC.^3;
end

