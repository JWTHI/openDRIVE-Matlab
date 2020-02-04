function obj = unenrich(obj)
    %UNENRICH Remove points from lanes
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
            obj.left.lane{i} = obj.left.lane{i}.unenrich();
        end
    end
    
    %% Center
    if ~isempty(obj.center)
        for i=1:size(obj.center.lane,2)
            obj.center.lane{i} = obj.center.lane{i}.unenrich();
        end
    end
    
    %% Right
    if ~isempty(obj.right)
        for i=1:size(obj.right.lane,2)
            obj.right.lane{i} = obj.right.lane{i}.unenrich();
        end
    end
end

