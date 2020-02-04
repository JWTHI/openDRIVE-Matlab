function obj = calcReferenceLine(obj)
    %CALCREFERENCELINE of an arc
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    global pointResolution
    
    radius = 1/obj.curvature;
    
    startPos(1) = obj.x;
    startPos(2) = obj.y;
    length = obj.length;
    heading = obj.hdg;
    s = obj.s;
    
    refs = [0:pointResolution:length,length];
    if refs(end) == refs(end-1)
        refs(end) = [];
    end
    
    alpha = length/radius;
    th = refs./radius;
    
    x = abs(radius) * cos(th) ;
    y = abs(radius) * sin(th) ;
    
    if alpha >=0
        heading = heading -pi/2;
    else
        heading = heading +pi/2;
    end
    referenceLinePoints(:,1) = x;
    referenceLinePoints(:,2) = y;
    delta = [abs(radius);0];
    % Transform
    rotMat = [cos(heading), -sin(heading); sin(heading), cos(heading)];
    referenceLinePointsRot = rotMat*(referenceLinePoints-delta')';
    referenceLinePoints = referenceLinePointsRot';
    referenceLinePoints = referenceLinePoints +startPos;
    
    referenceLinePoints(:,3) = th +heading + sign(alpha)*pi/2;
    referenceLinePoints(:,4) = s + refs;
    
    obj.referenceLinePoints = referenceLinePoints;
end

