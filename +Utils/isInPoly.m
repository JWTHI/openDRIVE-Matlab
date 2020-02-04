function flag = isInPoly(pos,poly)
    %ISINBBOX Check if pos inside bbox
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    % Based on: PNPOLY - Point Inclusion in Polygon Test W. Randolph Franklin (WRF) 
    % https://wrf.ecse.rpi.edu//Research/Short_Notes/pnpoly.html

    xcoord_1 = pos(1);
    ycoord_1 = pos(2);
    
    xcoord_2(:) = poly(:,1);
    ycoord_2(:) = poly(:,2);
    
    nvert=size(xcoord_2,2)+1; %<--- number of vertices for the polygon + 1
    
    flag = 0;
    
    
    
    flagZws=0; %<-- reseting the collision flag
    
    j = nvert-1;
    
    for i = 1:(nvert-1)
        
        if i>1
            j=i-1;
        end
        
        if (((ycoord_2(i)>ycoord_1) ~= (ycoord_2(j)>ycoord_1)) && ...
                (xcoord_1<(xcoord_2(j)-xcoord_2(i)) * ...
                (ycoord_1-ycoord_2(i)) / (ycoord_2(j)-ycoord_2(i)) + xcoord_2(i)))
            
            if flagZws==0 %<-- Toogling coinego
                flagZws=1; %<-- Toogling coinego
            else %<-- Toogling coinego
                flagZws=0; %<-- Toogling coinego
            end %<-- Toogling coinego
            
        end
        
        
    end
    
    if flagZws==1
        flag=1;
    end
    
    
    
    
    if flag > 0
        flag = true;
    else
        flag = false;
    end
end