function obj = validityXML(obj,validity)
    %validityXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(validity.Attributes,'fromLane')
        obj.fromLane  = str2double(validity.Attributes.fromLane);
    end
    if isfield(validity.Attributes,'toLane')
        obj.toLane  = str2double(validity.Attributes.toLane);
    end
    
end
