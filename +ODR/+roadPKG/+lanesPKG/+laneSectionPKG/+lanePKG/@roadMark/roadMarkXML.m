function obj = roadMarkXML(obj,roadMark)
    %roadMarkXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    obj.sOffset     = str2double(roadMark.Attributes.sOffset);
    if isfield(roadMark,'type')
        obj.typeObj  = ODR.roadPKG.lanesPKG.laneSectionPKG.lanePKG.roadMarkPKG.type();
        obj.typeObj  = obj.typeObj.typeXML(roadMark.type);
    end
    if isfield(roadMark.Attributes,'type')
        obj.type      = roadMark.Attributes.type;
    end
    if isfield(roadMark.Attributes,'weight')
        obj.weight      = roadMark.Attributes.weight;
    end
    if isfield(roadMark.Attributes,'color')
        obj.color       = roadMark.Attributes.color;
    end
    if isfield(roadMark.Attributes,'material')
        obj.material    = roadMark.Attributes.material;
    end
    if isfield(roadMark.Attributes,'width')
        obj.width       = str2double(roadMark.Attributes.width);
    end
    if isfield(roadMark.Attributes,'laneChange')
        obj.laneChnage  = roadMark.Attributes.laneChange;
    end
    if isfield(roadMark.Attributes,'height')
        obj.height      = str2double(roadMark.Attributes.height);
    end
end
