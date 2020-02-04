function obj = objectXML(obj,object)
    %objectXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(object.Attributes,'type')
        obj.type  = object.Attributes.type;
    end
    if isfield(object.Attributes,'name')
        obj.name  = object.Attributes.name;
    end
    if isfield(object.Attributes,'id')
        obj.id  = str2double(object.Attributes.id);
    end
    if isfield(object.Attributes,'s')
        obj.s  = str2double(object.Attributes.s);
    end
    if isfield(object.Attributes,'t')
        obj.t  = str2double(object.Attributes.t);
    end
    if isfield(object.Attributes,'zOffset')
        obj.zOffset  = str2double(object.Attributes.zOffset);
    end
    if isfield(object.Attributes,'validLength')
        obj.validLength  = str2double(object.Attributes.validLength);
    end
    if isfield(object.Attributes,'orientation')
        obj.orientation  = object.Attributes.orientation;
    end
    if isfield(object.Attributes,'length')
        obj.length  = str2double(object.Attributes.length);
    end
    if isfield(object.Attributes,'width')
        obj.width  = str2double(object.Attributes.width);
    end
    if isfield(object.Attributes,'radius')
        obj.radius  = str2double(object.Attributes.radius);
    end
    if isfield(object.Attributes,'height')
        obj.height  = str2double(object.Attributes.height);
    end
    if isfield(object.Attributes,'hdg')
        obj.hdg  = str2double(object.Attributes.hdg);
    end
    if isfield(object.Attributes,'pitch')
        obj.pitch  = str2double(object.Attributes.pitch);
    end
    if isfield(object.Attributes,'roll')
        obj.roll  = str2double(object.Attributes.roll);
    end
    
    
    if isfield(object,'repeat')
        if size(object.repeat,2)==1
            obj.repeat{1} = ODR.roadPKG.objectsPKG.objectPKG.repeat();
            obj.repeat{1} = obj.repeat{1}.repeatXML(object.repeat);
        else
            for i=1:size(object.repeat,2)
                obj.repeat{i} = ODR.roadPKG.objectsPKG.objectPKG.repeat();
                obj.repeat{i} = obj.repeat{i}.repeatXML(object.repeat{i});
            end
        end
    end
    if isfield(object,'outline')
        obj.outline = ODR.roadPKG.objectsPKG.objectPKG.outline();
        obj.outline = obj.outline.outlineXML(object.outline);
    end
    if isfield(object,'material')
        obj.material = ODR.roadPKG.objectsPKG.objectPKG.material();
        obj.material = obj.material.materialXML(object.material);
    end
    if isfield(object,'validity')
        if size(object.validity,2)==1
            obj.validity{1} = ODR.roadPKG.objectsPKG.objectPKG.validity();
            obj.validity{1} = obj.validity{1}.validityXML(object.validity);
        else
            for i=1:size(object.validity,2)
                obj.validity{i} = ODR.roadPKG.objectsPKG.objectPKG.validity();
                obj.validity{i} = obj.validity{i}.validityXML(object.validity{i});
            end
        end
    end
    if isfield(object,'parkingSpace')
        obj.parkingSpace = ODR.roadPKG.objectsPKG.objectPKG.parkingSpace();
        obj.parkingSpace = obj.parkingSpace.parkingSpaceXML(object.parkingSpace);
    end
end
