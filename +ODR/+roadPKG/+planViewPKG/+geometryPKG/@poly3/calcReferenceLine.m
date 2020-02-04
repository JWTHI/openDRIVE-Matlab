function obj = calcReferenceLine(obj)
    %CALCREFERENCELINE of an poly3
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
    a = obj.a;
    b = obj.b;
    c = obj.c;
    d = obj.d;
    
    %s coordinate
    refs = [0:pointResolution:length,length];
    if refs(end) == refs(end-1)
        refs(end) = [];
    end
    refs=transpose(refs);
    %vlocal calculation
    vlocal=a+b*refs+c*(refs.^2)+d*(refs.^3);
    %Rotation from uv to xy
    x=ulocal*cos(heading)-vlocal*sin(heading);
    y=ulocal*sin(heading)+vlocal*cos(heading);
    %Translation from xy to xyglobal
    x_glob=x+startPos(1);
    y_glob=y+startPos(2);
    %Heading calculation
    head=heading;
    for i=1:size(x_glob,1)-1
        localHead=atan2((y_glob(i+1,1)-y_glob(i,1)),(x_glob(i+1,1)-x_glob(i,1)));
        head=[head;localHead];
    end
    %ReferenceLinePoints construction
    referenceLinePoints(:,1) = x_glob;
    referenceLinePoints(:,2) = y_glob;
    referenceLinePoints(:,3) = head;
    referenceLinePoints(:,4) = refs;
    
    obj.referenceLinePoints = referenceLinePoints;
end

