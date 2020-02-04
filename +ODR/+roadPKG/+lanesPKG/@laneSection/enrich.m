function obj = enrich(obj, laneOffsetLine, referenceLine, sStepsL, sStepsR, sStepsC)
    %ENRICH Enriching a parsed laneSection
    %   Enrich the laneSection with points of lanes to plot
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    leftBbox = nan(4,1);
    centerBbox = nan(4,1);
    rigthBbox = nan(4,1);
    %% Left
    id2sort = [];
    zwsLeftBbox = [];
    if ~isempty(obj.left)
        %First get the ordering
        for i=1:size(obj.left.lane,2)
            id2sort(i) = obj.left.lane{i}.id;
        end
        [~,order] = sort(id2sort);
        for i=1:size(obj.left.lane,2)
            %Get the lanes in the order (1 to x) if case width entry is used
            innerIds =[];
            if i > 1
                innerIds = order(1:i-1);
            end
            obj.left.lane{order(i)} = obj.left.lane{order(i)}.enrich(...
                obj.left.lane,...
                innerIds,...
                laneOffsetLine,...
                referenceLine,...
                sStepsL,...
                1,...
                false);
            zwsLeftBbox(:,i) = obj.left.lane{order(i)}.bbox;
        end
        leftBbox(1) = min(zwsLeftBbox(1,:));
        leftBbox(2) = max(zwsLeftBbox(2,:));
        leftBbox(3) = min(zwsLeftBbox(3,:));
        leftBbox(4) = max(zwsLeftBbox(4,:));
        obj.left.bbox = leftBbox;
    end
    
    %% Center
    id2sort = [];
    zwsCenterBbox = [];
    if ~isempty(obj.center)
        %First get the ordering
        for i=1:size(obj.center.lane,2)
            id2sort(i) = obj.center.lane{i}.id;
        end
        [~,order] = sort(id2sort);
        for i=1:size(obj.center.lane,2)
            %Get the lanes in the order (1 to x) if case width entry is used
            innerIds =[];
            if i > 1
                innerIds = order(1:i-1);
            end
            obj.center.lane{order(i)} = obj.center.lane{order(i)}.enrich(...
                obj.center.lane,...
                innerIds,...
                laneOffsetLine,...
                referenceLine,...
                sStepsC,...
                1,...
                true);
            zwsCenterBbox(:,i) = obj.center.lane{order(i)}.bbox;
        end
        centerBbox(1) = min(zwsCenterBbox(1,:));
        centerBbox(2) = max(zwsCenterBbox(2,:));
        centerBbox(3) = min(zwsCenterBbox(3,:));
        centerBbox(4) = max(zwsCenterBbox(4,:));
        obj.center.bbox = centerBbox;
    end
    
    
    %% Right
    id2sort = [];
    zwsRightBbox = [];
    if ~isempty(obj.right)
        %First get the ordering
        for i=1:size(obj.right.lane,2)
            id2sort(i) = obj.right.lane{i}.id;
        end
        [~,order] = sort(id2sort,'descend');
        for i=1:size(obj.right.lane,2)
            %Get the lanes in the order (1 to x) if case width entry is used
            innerIds =[];
            if i > 1
                innerIds = order(1:i-1);
            end
            obj.right.lane{order(i)} = obj.right.lane{order(i)}.enrich(...
                obj.right.lane,...
                innerIds,...
                laneOffsetLine,...
                referenceLine,...
                sStepsR,...
                -1,...
                false);
            zwsRightBbox(:,i) = obj.right.lane{order(i)}.bbox;
        end
        rigthBbox(1) = min(zwsRightBbox(1,:));
        rigthBbox(2) = max(zwsRightBbox(2,:));
        rigthBbox(3) = min(zwsRightBbox(3,:));
        rigthBbox(4) = max(zwsRightBbox(4,:));
        obj.right.bbox = rigthBbox;
    end
    
    bboxGes(1) = min(leftBbox(1),min(centerBbox(1),rigthBbox(1)));
    bboxGes(2) = max(leftBbox(2),max(centerBbox(2),rigthBbox(2)));
    bboxGes(3) = min(leftBbox(3),min(centerBbox(3),rigthBbox(3)));
    bboxGes(4) = max(leftBbox(4),max(centerBbox(4),rigthBbox(4)));
    obj.bbox = bboxGes;
end