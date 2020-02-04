function obj = borderXML(obj,border)
    %BORDERXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    obj.sOffset = str2double(border.Attributes.sOffset);
    obj.a       = str2double(border.Attributes.a);
    obj.b       = str2double(border.Attributes.b);
    obj.c       = str2double(border.Attributes.c);
    obj.d       = str2double(border.Attributes.d);
end