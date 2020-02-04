function obj = widthXML(obj,width)
    %WIDTHXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    obj.sOffset = str2double(width.Attributes.sOffset);
    obj.a       = str2double(width.Attributes.a);
    obj.b       = str2double(width.Attributes.b);
    obj.c       = str2double(width.Attributes.c);
    obj.d       = str2double(width.Attributes.d);
end