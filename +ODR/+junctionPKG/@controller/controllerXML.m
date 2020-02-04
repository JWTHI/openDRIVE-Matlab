function obj = controllerXML(obj,controller)
    %controllerlerXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(controller.Attributes,'type')
        obj.type    = controller.Attributes.type;
    end
    if isfield(controller.Attributes,'id')
        obj.id    = str2double(controller.Attributes.id);
    end
    if isfield(controller.Attributes,'sequence')
        obj.sequence    = str2double(controller.Attributes.sequence);
    end
end

