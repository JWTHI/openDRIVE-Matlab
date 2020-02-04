function obj = lineXML(obj,line)
    %lineXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    obj.length      = str2double(line.Attributes.length);
    obj.space       = str2double(line.Attributes.space);
    obj.tOffset     = str2double(line.Attributes.tOffset);
    obj.sOffset     = str2double(line.Attributes.sOffset);
    obj.rule        = line.Attributes.rule;
    obj.width       = str2double(line.Attributes.width);
end
