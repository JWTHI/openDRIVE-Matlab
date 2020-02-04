function obj = poly3XML(obj,geometry)
    %poly3XML  Parsing the XML to the corresponding classes and properties
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
    obj.a           = str2double(geometry.poly3.Attributes.a);
    obj.b           = str2double(geometry.poly3.Attributes.b);
    obj.c           = str2double(geometry.poly3.Attributes.c);
    obj.d           = str2double(geometry.poly3.Attributes.d);
end