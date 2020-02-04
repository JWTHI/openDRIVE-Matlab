function obj = junctionReferenceXML(obj,junctionReference)
    %junctionReferencelerXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(junctionReference.Attributes,'junction')
        obj.junction    = str2double(junctionReference.Attributes.junction);
    end
    
end

