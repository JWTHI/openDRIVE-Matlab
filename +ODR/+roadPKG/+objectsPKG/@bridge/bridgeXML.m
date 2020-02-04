function obj = bridgeXML(obj,bridge)
    %bridgeXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(bridge.Attributes,'id')
        obj.id  = str2double(bridge.Attributes.id);
    end
    if isfield(bridge.Attributes,'s')
        obj.s  = str2double(bridge.Attributes.s);
    end
    if isfield(bridge.Attributes,'length')
        obj.length  = str2double(bridge.Attributes.length);
    end
    if isfield(bridge.Attributes,'name')
        obj.name  = bridge.Attributes.name;
    end
    if isfield(bridge.Attributes,'type')
        obj.type  = bridge.Attributes.type;
    end
    if isfield(bridge.Attributes,'validLength')
        obj.validLength  = str2double(bridge.Attributes.validLength);
    end
    
    if isfield(bridge,'validity')
        if size(bridge.validity,2)==1
            obj.validity{1} = ODR.roadPKG.objectsPKG.objectPKG.validity();
            obj.validity{1} = obj.validity{1}.validityXML(bridge.validity);
        else
            for i=1:size(bridge.validity,2)
                obj.validity{i} = ODR.roadPKG.objectsPKG.objectPKG.validity();
                obj.validity{i} = obj.validity{i}.validityXML(bridge.validity{i});
            end
        end
    end
end
