function obj = laneOffsetXML(obj,laneOffset)
    %laneOffsetXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    obj.s = str2double(laneOffset.Attributes.s);
    obj.a = str2double(laneOffset.Attributes.a);
    obj.b = str2double(laneOffset.Attributes.b);
    obj.c = str2double(laneOffset.Attributes.c);
    obj.d = str2double(laneOffset.Attributes.d);
end
