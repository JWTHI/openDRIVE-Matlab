function obj = controllerXML(obj,controllerIn)
    %controllerXML  Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(controllerIn.Attributes,'name')
        obj.name    = controllerIn.Attributes.name;
    end
    if isfield(controllerIn.Attributes,'id')
        obj.id    = str2double(controllerIn.Attributes.id);
    end
    if isfield(controllerIn.Attributes,'sequence')
        obj.sequence    = str2double(controllerIn.Attributes.sequence);
    end
    
    %-Control------------------------------------------------------------------
    if isfield(controllerIn,'control')
        if size(controllerIn.control,2)==1
            obj.control{1} = ODR.controllerPKG.control();
            obj.control{1} = obj.control{1}.controlXML(controllerIn.control);
        else
            for i=1:size(controllerIn.control,2)
                obj.control{i} = ODR.controllerPKG.control();
                obj.control{i} = obj.control{i}.controlXML(controllerIn.control{i});
            end
        end
    end
    
end

