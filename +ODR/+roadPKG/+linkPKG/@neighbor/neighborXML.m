function obj = neighborXML(obj,neighbor)
    %SUCCESSORXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    obj.elementType = neighbor.Attributes.side;
    obj.elementId = str2double(neighbor.Attributes.elementId);
    obj.direction = neighbor.Attributes.direction;
    
end

