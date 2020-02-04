function plot(obj, fig, ignoreStrings)
    % PLOT Plot the enriched lane while applying ignoreStrings
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    
    %% Perform the acutal plotting
    figure(fig);
    if ~isempty(obj.boundaryLineIn) && ~isempty(obj.boundaryLineOut)
        if ~any(strcmp(ignoreStrings,obj.type))
            switch obj.type
                case 'driving'
                    colorFill = [211/255 211/255 211/255];
                case 'sidewalk'
                    colorFill = [119/255 136/255 153/255];
                case 'restricted'
                    colorFill = [128/255 128/255 0/255];
                otherwise
                    colorFill =[];
            end
            if ~isempty(colorFill)
                fill([obj.boundaryLineIn(:,1);flipud(obj.boundaryLineOut(:,1))],...
                    [obj.boundaryLineIn(:,2);flipud(obj.boundaryLineOut(:,2))],...
                    colorFill,'EdgeColor','none')
            end
            
            if ~isempty(obj.roadMark) && ~strcmp(obj.type,'none') && ~strcmp(obj.type,'border') && ~strcmp(obj.type,'sidewalk')
                for i=1:size(obj.roadMark,2)
                    obj.roadMark{i}.plot(fig, obj.boundaryLineOut);
                end
            end
        end
    end
end

