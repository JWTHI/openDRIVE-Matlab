function obj = accessXML(obj,access)
    %accessXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    obj.sOffset         = str2double(access.Attributes.sOffset);
    obj.restriction     = access.Attributes.restriction;
end
