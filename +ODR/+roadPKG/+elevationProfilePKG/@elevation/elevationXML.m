function obj = elevationXML(obj,elevation)
    %ELEVATIONXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    obj.s = str2double(elevation.Attributes.s);
    obj.a = str2double(elevation.Attributes.a);
    obj.b = str2double(elevation.Attributes.b);
    obj.c = str2double(elevation.Attributes.c);
    obj.d = str2double(elevation.Attributes.d);
end
