function obj = successorXML(obj,successor)
    %SUCCESSORXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    obj.elementType = successor.Attributes.elementType;
    obj.elementId = str2double(successor.Attributes.elementId);
    if strcmp(obj.elementType,'junction')
        obj.contactPoint = [];
    else
        obj.contactPoint = successor.Attributes.contactPoint;
    end
end

