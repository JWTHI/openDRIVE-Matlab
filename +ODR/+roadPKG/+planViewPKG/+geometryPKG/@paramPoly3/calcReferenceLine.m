function obj = calcReferenceLine(obj)
    %CALCREFERENCELINE of a paramPoly3
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
    aU = obj.aU;
    bU = obj.bU;
    cU = obj.cU;
    dU = obj.dU;
    aV = obj.aV;
    bV = obj.bV;
    cV = obj.cV;
    dV = obj.dV;
    
    %s coordinate
    if obj.pRange == 'normalized'
        relativeResolution = pointResolution/length;
        refs = [0:relativeResolution:1,1];
        if refs(end) == refs(end-1)
            refs(end) = [];
        end
    else
        refs = [0:pointResolution:length,length];
        if refs(end) == refs(end-1)
            refs(end) = [];
        end
    end
    refs=transpose(refs);
    %ulocal and vlocal calculation
    ulocal=aU+bU*refs+cU*(refs.^2)+dU*(refs.^3);
    vlocal=aV+bV*refs+cV*(refs.^2)+dV*(refs.^3);
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
    referenceLinePoints(:,4) = obj.s + refs;
    
    obj.referenceLinePoints = referenceLinePoints;
end

