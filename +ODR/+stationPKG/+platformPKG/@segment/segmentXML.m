function obj = segmentXML(obj,segment)
    %segmentXML  Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    obj.roadId = str2double(segment.Attributes.roadId);
    obj.sStart = str2double(segment.Attributes.sStart);
    obj.sEnd = str2double(segment.Attributes.sEnd);
    obj.side = segment.Attributes.side;
end
