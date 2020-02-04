function obj = dependencyXML(obj,dependency)
    %dependencyXML  Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(dependency.Attributes,'id')
        obj.id  = str2double(dependency.Attributes.id);
    end
    if isfield(dependency.Attributes,'type')
        obj.type  = str2double(dependency.Attributes.type);
    end
    
end
