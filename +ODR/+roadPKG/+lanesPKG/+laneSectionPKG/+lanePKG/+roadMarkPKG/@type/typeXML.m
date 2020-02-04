function obj = typeXML(obj,type)
    %typeXML  Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    obj.name        = type.Attributes.name;
    obj.width       = type.Attributes.width;
    if isfield(type,'line')
        obj.line  = ODR.roadPKG.lanesPKG.laneSectionPKG.lanePKG.roadMarkPKG.typePKG.line();
        obj.line  = obj.line.lineXML(type.line);
    end
end
