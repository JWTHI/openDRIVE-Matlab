function obj= enrich(obj,deltaReferenceLineS,nextsOffset)
    %ENRICH  Enrich the roadMark. Create validS = true if road mark is
    %valid for corresponding s
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    obj.validS = deltaReferenceLineS >= obj.sOffset & deltaReferenceLineS <= nextsOffset;
end

