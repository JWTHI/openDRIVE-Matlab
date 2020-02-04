function obj = materialXML(obj,material)
    %materialXML  Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(material.Attributes,'surface')
        obj.surface  = material.Attributes.surface;
    end
    if isfield(material.Attributes,'friction')
        obj.friction  = str2double(material.Attributes.friction);
    end
    if isfield(material.Attributes,'roughness')
        obj.roughness  = str2double(material.Attributes.roughness);
    end
end
