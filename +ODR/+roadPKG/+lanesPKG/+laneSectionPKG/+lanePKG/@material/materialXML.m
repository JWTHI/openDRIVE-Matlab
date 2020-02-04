function obj = materialXML(obj,material)
    %materialXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    obj.sOffset         = str2double(material.Attributes.sOffset);
    obj.surface         = material.Attributes.surface;
    obj.friction        = str2double(material.Attributes.friction);
    obj.roughness       = str2double(material.Attributes.roughness);
end
