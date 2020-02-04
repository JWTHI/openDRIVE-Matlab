function obj = junctionGroupXML(obj,junctionGroupIn)
    %junctionGroupXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(junctionGroupIn.Attributes,'name')
        obj.name    = junctionGroupIn.Attributes.name;
    end
    if isfield(junctionGroupIn.Attributes,'id')
        obj.id    = str2double(junctionGroupIn.Attributes.id);
    end
    if isfield(junctionGroupIn.Attributes,'type')
        obj.type    = junctionGroupIn.Attributes.type;
    end
    
    if isfield(junctionGroupIn,'junctionReference')
        if size(junctionGroupIn.junctionReference,2)==1
            obj.junctionReference{1} = ODR.junctionGroupPKG.junctionReference();
            obj.junctionReference{1} = obj.junctionReference{1}.junctionReferenceXML(junctionGroupIn.junctionReference);
        else
            for i=1:size(junctionGroupIn.junctionReference,2)
                obj.junctionReference{i} = ODR.junctionGroupPKG.junctionReference();
                obj.junctionReference{i} = obj.junctionReference{i}.junctionReferenceXML(junctionGroupIn.junctionReference{i});
            end
        end
    end
end

