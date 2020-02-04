function obj = typeXML(obj,type)
    %TYPEXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    obj.s           = str2double(type.Attributes.s);
    obj.typeName    = type.Attributes.type;
    if isfield(type,'speed')
        obj.speed       = obj.speed.speedXML(type.speed);
    end
end
