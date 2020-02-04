function obj = lineXML(obj,geometry)
    %lineXML  Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    obj.s           = str2double(geometry.Attributes.s);
    obj.x           = str2double(geometry.Attributes.x);
    obj.y           = str2double(geometry.Attributes.y);
    obj.hdg         = str2double(geometry.Attributes.hdg);
    obj.length      = str2double(geometry.Attributes.length);
end