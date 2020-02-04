function obj = shapeXML(obj,shpae)
    %shapeXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    obj.s = str2double(shpae.Attributes.s);
    obj.t = str2double(shpae.Attributes.t);
    obj.a = str2double(shpae.Attributes.a);
    obj.b = str2double(shpae.Attributes.b);
    obj.c = str2double(shpae.Attributes.c);
    obj.d = str2double(shpae.Attributes.d);
    
end
