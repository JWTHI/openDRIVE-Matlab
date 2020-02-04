function obj = superelevationXML(obj,superelevation)
    %superelevationXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    obj.s = str2double(superelevation.Attributes.s);
    obj.a = str2double(superelevation.Attributes.a);
    obj.b = str2double(superelevation.Attributes.b);
    obj.c = str2double(superelevation.Attributes.c);
    obj.d = str2double(superelevation.Attributes.d);
    
end
