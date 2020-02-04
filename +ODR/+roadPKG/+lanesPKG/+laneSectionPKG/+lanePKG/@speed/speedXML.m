function obj = speedXML(obj,speed)
    %speedXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    obj.sOffset         = str2double(speed.Attributes.sOffset);
    obj.max             = str2double(speed.Attributes.max);
    if isfield(speed.Attributes,'unit')
        obj.unit            = speed.Attributes.unit;
    end
end
