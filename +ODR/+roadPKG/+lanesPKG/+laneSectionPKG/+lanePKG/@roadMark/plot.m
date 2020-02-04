function plot(obj, fig, boundaryLineOut)
    %PLOT Plotting the lane marking
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    figure(fig);
    if any(obj.validS)
        if ~strcmp(obj.type,'none')
            switch obj.type
                case 'broken'
                    markingType = '--';
                case 'solid'
                    markingType = '-';
                otherwise
                    markingType = '-.';
            end
            if isempty(obj.width)
                %FIXME: Select proper width
                markerwidth=0.1;
            else
                markerwidth = obj.width;
            end
            ax = gca();
            ax.Units='Points';
            axpos=ax.Position;
            pba=ax.PlotBoxAspectRatio;
            ax.Units='normalized';
            scale=min([axpos(3),pba(1)/pba(2)*axpos(4)])/diff(xlim);
            a=markerwidth.*scale;
            currentLine = plot(...
                boundaryLineOut(obj.validS,1),...
                boundaryLineOut(obj.validS,2),...
                'w','LineWidth',a,'LineStyle',markingType);
            currentLine.UserData = markerwidth;
        end
    end
    
