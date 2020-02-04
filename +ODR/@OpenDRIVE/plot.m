function plot(obj,ignoreStrings,bbox_in_m, orient)
    %PLOT Plot the map
    %   Plotting the enriched map
    %       ignoreStrings : lanetypes not to be plotted. README for details
    %       bbox_in_m     : [min_x max_x min_y max_y] 
    %       orient        : orinetation in rad. Attention: README for details
    %       
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    fig = figure();
    set(gca,'Color',[34/255 139/255 34/255])
    axis equal
    hold on
    ax = gca;
    ax.Units = 'normalized';
    
    
    for i=1:size(obj.road,2)
        obj.road{i}.plot(fig,ignoreStrings);
        hold on
    end
    %set up zoom callback to scale the line widths properly
    h = zoom;
    h.ActionPostCallback = @mypostcallback;
    %Store current lims
    fig.UserData = diff(xlim);
    
    % Resort plot such that lines are last
    zws = fig.Children.Children;
    valid = find(isgraphics(zws,'line'));
    remaining = setdiff(1:size(zws,1),valid);
    
    newIdx = [valid;remaining'];
    
    fig.Children.Children = fig.Children.Children(newIdx);
    
    if ~isempty(orient)
        bboxCenterX = bbox_in_m(1)+(bbox_in_m(2)-bbox_in_m(1))/2;
        bboxCenterY = bbox_in_m(3)+(bbox_in_m(4)-bbox_in_m(3))/2;
        graphicsObjects = fig.Children.Children;
        for i=1:size(graphicsObjects,1)
            rotate(graphicsObjects(i),[0 0 1],(orient/pi)*180,[bboxCenterX bboxCenterY 0])
        end
    end
    
    if ~isempty(bbox_in_m)
        axis(bbox_in_m)
        valid = find(isgraphics(fig.Children.Children,'line'));
        % Multiply all linewidths
        ax = gca();
        ax.Position;
        ax.Units='Points';
        axpos=ax.Position;
        pba=ax.PlotBoxAspectRatio;
        ax.Units='normalized';
        scale=min([axpos(3),pba(1)/pba(2)*axpos(4)])/diff(xlim);
        
        for i=valid'
            fig.Children.Children(i).LineWidth = scale* fig.Children.Children(i).UserData;
        end
    end
end
function mypostcallback(obj,evd)
    %Scale the line width with zooming
    valid = find(isgraphics(obj.Children.Children,'line'));
    % Multiply all linewidths
    ax = gca();
    ax.Position;
    ax.Units='Points';
    axpos=ax.Position;
    pba=ax.PlotBoxAspectRatio;
    ax.Units='normalized';
    scale=min([axpos(3),pba(1)/pba(2)*axpos(4)])/diff(xlim);
    
    for i=valid'
        obj.Children.Children(i).LineWidth = scale* obj.Children.Children(i).UserData;
    end
end

