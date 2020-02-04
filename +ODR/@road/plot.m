function plot(obj,fig,ignoreStrings)
    %PLOT Plotting the lanes and signals of a road
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    obj.lanes.plot(fig,ignoreStrings);
    if ~any(strcmp(ignoreStrings,'signals'))
        obj.signals.plot(obj,fig);
    end
end
