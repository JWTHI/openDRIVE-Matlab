function obj = controlXML(obj,control)
    %controllerXML  Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(control.Attributes,'type')
        obj.type    = control.Attributes.type;
    end
    if isfield(control.Attributes,'signalId')
        obj.signalId    = str2double(control.Attributes.signalId);
    end
end

