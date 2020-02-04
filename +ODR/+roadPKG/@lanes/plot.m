function  plot(obj, fig, ignoreStrings)
    %PLOT Plotting the lanes a lanes
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    for i=1:size(obj.laneSection,2)
        obj.laneSection{i}.plot(fig,ignoreStrings);
    end
end

