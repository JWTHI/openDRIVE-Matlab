function obj = enrich(obj,bCirc)
    %ENRICH Enriching a parsed road
    %   Enrich the road with points of lanes to plot if they are within
    %   bCirc
    %   Special Cases:    isempty(bCirc) --> Fullmap
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isempty(obj.bbox)
        obj.planView    = obj.planView.enrich();
        obj.lanes       = obj.lanes.enrich(bCirc, obj.planView.referenceLine);
        obj.bbox        = obj.lanes.bbox;
        
        if ~Utils.circleBboxIntersection(obj.bbox,bCirc)%|| planView
            % This road is irrelevant
            % Remove the referenceLine and all other points
            obj.planView    = obj.planView.unenrich();
            obj.lanes       = obj.lanes.unenrich();
        elseif ~Utils.circleRefLineIntersect(obj.planView.referenceLine(:,1:2),bCirc)
            obj.planView    = obj.planView.unenrich();
            obj.lanes       = obj.lanes.unenrich();
        end
    else
        if Utils.circleBboxIntersection(obj.bbox,bCirc)
            % This road is relevant
            % Calculate the referenceLine and all the points
            obj.planView    = obj.planView.enrich();
            if ~Utils.circleRefLineIntersect(obj.planView.referenceLine(:,1:2),bCirc)
                obj.planView    = obj.planView.unenrich();
                obj.lanes       = obj.lanes.unenrich();
            else
                obj.lanes       = obj.lanes.enrich(bCirc, obj.planView.referenceLine);
            end
        else
            % This road is irrelevant
            % Remove the referenceLine and all other points
            obj.planView    = obj.planView.unenrich();
            obj.lanes       = obj.lanes.unenrich();
        end
    end
    
