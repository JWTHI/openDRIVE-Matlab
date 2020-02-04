function obj = enrich(obj)
    %ENRICH Enriching a parsed reference line
    %   Enricht the reference line
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isempty(obj.referenceLine)
        obj = obj.calcReferenceLine();
    end
end

