function obj = predecessorXML(obj,predecessor)
    %PREDECESSORXML  Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    obj.elementType = predecessor.Attributes.elementType;
    obj.elementId = str2double(predecessor.Attributes.elementId);
    if strcmp(obj.elementType,'junction')
        obj.contactPoint = [];
    else
        obj.contactPoint = predecessor.Attributes.contactPoint;
    end
end

