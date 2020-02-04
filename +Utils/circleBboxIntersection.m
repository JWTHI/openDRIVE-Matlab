function [intersect] = circleBboxIntersection(bbox,bCirc)
    %CIRCLEBBOXINTERSECTION check if a circle and a axis parallel rectangle
    %interssect
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    % Based on: https://stackoverflow.com/questions/401847/circle-rectangle-collision-detection-intersection/402010#402010https://stackoverflow.com/questions/401847/circle-rectangle-collision-detection-intersection/402010#402010
    if isempty(bCirc)
        intersect = true;
        return
    end
    intersect = false;
    width = bbox(2)-bbox(1);
    height = bbox(4)-bbox(3);
    rectC(1) = bbox(1)+width/2;
    rectC(2) = bbox(3)+height/2;
    
    distX = abs(bCirc(1)-rectC(1));
    distY = abs(bCirc(2)-rectC(2));
    
    
    if distX > (width/2 + bCirc(3))
        return
    end
    if distY > (height/2 + bCirc(3))
        return
    end
    
    if distX <= (width/2)
        intersect = true;
        return
    end
    
    if distY <= (height/2)
        intersect = true;
        return
    end
    
    if ((distX -width/2)^2 +(distY -height/2)^2) <= bCirc(3)^2
        intersect = true;
    end
end

