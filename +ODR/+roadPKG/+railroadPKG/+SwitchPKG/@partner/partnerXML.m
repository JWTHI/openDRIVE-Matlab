function obj = partnerXML(obj,partner)
    %partnerXML  Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(partner.Attributes,'id')
        obj.id  = str2double(partner.Attributes.id);
    end
    
    if isfield(partner.Attributes,'name')
        obj.name  = partner.Attributes.name;
    end
    
end
