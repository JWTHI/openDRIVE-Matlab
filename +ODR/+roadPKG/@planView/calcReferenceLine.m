function obj = calcReferenceLine(obj)
    %calcReferenceLine calculate the reference line of the planView
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    for i=1:size(obj.geometry,2)
        obj.geometry{i} = obj.geometry{i}.calcReferenceLine();
        obj.referenceLine = [obj.referenceLine;obj.geometry{i}.referenceLinePoints];
    end
end

