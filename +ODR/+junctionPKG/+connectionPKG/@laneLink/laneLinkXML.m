function obj = laneLinkXML(obj,laneLink)
    %laneLinkXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    obj.from = str2double(laneLink.Attributes.from);
    obj.to = str2double(laneLink.Attributes.to);
end
