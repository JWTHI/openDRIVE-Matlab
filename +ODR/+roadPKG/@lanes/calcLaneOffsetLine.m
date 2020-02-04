function obj = calcLaneOffsetLine(obj,referenceLine)
    %CALCLANEOFFSETLINE Get the laneOffset for given s points
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isempty(obj.laneOffset)
        obj.laneOffsetLine = zeros(numel(referenceLine(:,4)),1);
    else
        offset = zeros(numel(referenceLine(:,4)),1);
        for i=1:size(obj.laneOffset,2)
            offset = obj.laneOffset{i}.calcLaneOffsetLine(referenceLine(:,4),offset);
        end
        obj.laneOffsetLine = offset;
    end
end

