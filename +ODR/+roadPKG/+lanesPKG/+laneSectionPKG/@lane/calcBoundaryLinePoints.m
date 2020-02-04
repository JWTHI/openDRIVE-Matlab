function [boundaryLinePointsIn,boundaryLinePointsOut] = calcBoundaryLinePoints(obj,widthOffset,laneOffsetLine,deltaReferenceLine, direction)
    %CALCBOUNDARYLINEPOINTS  Calculating the BaundaryPoints for in and out
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    %Get tangent vector
    [tx,ty] = pol2cart(deltaReferenceLine(:,3),1);
    
    %Get normal vector
    n(:,1) = -ty;
    n(:,2) = tx;
    
    %Get delta of shifting base line (widthOffset + laneOffset)
    f = laneOffsetLine + direction*widthOffset;
    deltaPos = n.*f;
    boundaryLinePointsIn = deltaReferenceLine(:,1:2)+deltaPos;
    
    %Get delta of shifting base line (widthOffset + laneOffset)
    f = direction*obj.widthPoints;
    deltaPos = n.*f;
    boundaryLinePointsOut = boundaryLinePointsIn + deltaPos;
end

