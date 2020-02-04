function obj = calcReferenceLine(obj)
    %CALCREFERENCELINE of a line
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    global pointResolution
    
    startPos(1) = obj.x;
    startPos(2) = obj.y;
    length = obj.length;
    heading = obj.hdg;
    s = obj.s;
    
    
    Delta(1) = cos(heading)*length;
    Delta(2) = sin(heading)*length;
    
    endPos = startPos + Delta;
    startPos(3) = heading;
    endPos(3) = heading;
    startPos(4) = s;
    endPos(4) = s+length;
    
    Delta(1) = cos(heading);
    Delta(2) = sin(heading);
    
    refs = [0:pointResolution:length,length];
    if refs(end) == refs(end-1)
        refs(end) = [];
    end
    
    referenceLinePoints(:,1) = startPos(1) + Delta(1).*refs;
    referenceLinePoints(:,2) = startPos(2) + Delta(2).*refs;
    
    referenceLinePoints(:,3) = startPos(3);
    referenceLinePoints(:,4) = startPos(4) + refs;
    
    obj.referenceLinePoints = referenceLinePoints;
    
end

