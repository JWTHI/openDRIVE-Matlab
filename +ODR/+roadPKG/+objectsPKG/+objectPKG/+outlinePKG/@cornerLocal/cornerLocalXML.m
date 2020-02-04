function obj = cornerLocalXML(obj,cornerLocal)
    %cornerLocalXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(cornerLocal.Attributes,'u')
        obj.u  = str2double(cornerLocal.Attributes.u);
    end
    if isfield(cornerLocal.Attributes,'v')
        obj.v  = str2double(cornerLocal.Attributes.v);
    end
    if isfield(cornerLocal.Attributes,'z')
        obj.z  = str2double(cornerLocal.Attributes.z);
    end
    if isfield(cornerLocal.Attributes,'height')
        obj.height  = str2double(cornerLocal.Attributes.height);
    end
end
