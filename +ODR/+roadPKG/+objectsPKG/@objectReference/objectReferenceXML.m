function obj = objectReferenceXML(obj,objectReference)
    %objectReferenceXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(objectReference.Attributes,'id')
        obj.id  = str2double(objectReference.Attributes.id);
    end
    if isfield(objectReference.Attributes,'s')
        obj.s  = str2double(objectReference.Attributes.s);
    end
    if isfield(objectReference.Attributes,'t')
        obj.t  = str2double(objectReference.Attributes.t);
    end
    if isfield(objectReference.Attributes,'zOffset')
        obj.zOffset  = str2double(objectReference.Attributes.zOffset);
    end
    if isfield(objectReference.Attributes,'validLength')
        obj.validLength  = str2double(objectReference.Attributes.validLength);
    end
    if isfield(objectReference.Attributes,'orientation')
        obj.orientation  = objectReference.Attributes.orientation;
    end
    
    if isfield(objectReference,'validity')
        if size(objectReference.validity,2)==1
            obj.validity{1} = ODR.roadPKG.objectsPKG.objectPKG.validity();
            obj.validity{1} = obj.validity{1}.validityXML(objectReference.validity);
        else
            for i=1:size(objectReference.validity,2)
                obj.validity{i} = ODR.roadPKG.objectsPKG.objectPKG.validity();
                obj.validity{i} = obj.validity{i}.validityXML(objectReference.validity{i});
            end
        end
    end
end
