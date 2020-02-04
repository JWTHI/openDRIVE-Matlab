function intersect = circleRefLineIntersect(refLine,bCirc)
    %CIRCLEREFLINEINTERSECT Check if any point of refLine is in bCirc
    % when implementing else use for and check each state to prevent
    % unnecessary iterations
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if ~isempty(bCirc)
        dist = (refLine(:,1)-bCirc(1)).^2+(refLine(:,2)-bCirc(2)).^2;
        intersect = any(dist <= bCirc(3)^2);
    else
        intersect = true;
    end
end

