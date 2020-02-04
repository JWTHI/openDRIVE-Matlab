function plot(obj, fig,ignoreStrings)
    %PLOT Plotting the lanes og the lanesection
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    %% Left
    if ~isempty(obj.left)
        for i=1:size(obj.left.lane,2)
            obj.left.lane{i}.plot(fig,ignoreStrings);
        end
    end
    
    %% Center
    if ~isempty(obj.center)
        for i=1:size(obj.center.lane,2)
            obj.center.lane{i}.plot(fig,ignoreStrings);
        end
    end
    
    %% Right
    if ~isempty(obj.right)
        for i=1:size(obj.right.lane,2)
            obj.right.lane{i}.plot(fig,ignoreStrings);
        end
    end