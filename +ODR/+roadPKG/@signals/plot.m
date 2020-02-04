function plot(obj, road, fig)
    %PLOT Plot the signals of a road
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if size(obj.signal,2)>=1
        for i=1:size(obj.signal,2)
            obj.signal{i}.plot(road,fig);
        end
    end
end

