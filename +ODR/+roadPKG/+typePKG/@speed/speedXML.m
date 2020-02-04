function obj = speedXML(obj,speed)
    %SPEEDXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    obj.max           = str2double(speed.Attributes.max);
    obj.unit          = type.Attributes.unit;
end

