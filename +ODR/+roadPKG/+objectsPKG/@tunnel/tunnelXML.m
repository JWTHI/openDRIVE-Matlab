function obj = tunnelXML(obj,tunnel)
    %tunnelXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(tunnel.Attributes,'id')
        obj.id  = str2double(tunnel.Attributes.id);
    end
    if isfield(tunnel.Attributes,'s')
        obj.s  = str2double(tunnel.Attributes.s);
    end
    if isfield(tunnel.Attributes,'length')
        obj.length  = str2double(tunnel.Attributes.length);
    end
    if isfield(tunnel.Attributes,'name')
        obj.name  = tunnel.Attributes.name;
    end
    if isfield(tunnel.Attributes,'type')
        obj.type  = tunnel.Attributes.type;
    end
    if isfield(tunnel.Attributes,'validLength')
        obj.validLength  = str2double(tunnel.Attributes.validLength);
    end
    if isfield(tunnel.Attributes,'lighting')
        obj.lighting  = str2double(tunnel.Attributes.lighting);
    end
    if isfield(tunnel.Attributes,'daylight')
        obj.daylight  = str2double(tunnel.Attributes.daylight);
    end
    
    if isfield(tunnel,'validity')
        if size(tunnel.validity,2)==1
            obj.validity{1} = ODR.roadPKG.objectsPKG.objectPKG.validity();
            obj.validity{1} = obj.validity{1}.validityXML(tunnel.validity);
        else
            for i=1:size(tunnel.validity,2)
                obj.validity{i} = ODR.roadPKG.objectsPKG.objectPKG.validity();
                obj.validity{i} = obj.validity{i}.validityXML(tunnel.validity{i});
            end
        end
    end
end
