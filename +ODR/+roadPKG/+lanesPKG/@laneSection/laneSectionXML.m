function obj = laneSectionXML(obj,laneSection)
    %laneSectionXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    obj.s           = str2double(laneSection.Attributes.s);
    if isfield(laneSection.Attributes,'singleSide')
        obj.singleSide  = strcmp(laneSection.Attributes.singleSide,'true');
    end
    if isfield(laneSection,'left')
        obj.left = ODR.roadPKG.lanesPKG.laneSectionPKG.left();
        obj.left = obj.left.leftXML(laneSection.left);
    end
    
    if isfield(laneSection,'right')
        obj.right = ODR.roadPKG.lanesPKG.laneSectionPKG.right();
        obj.right = obj.right.rightXML(laneSection.right);
    end
    
    if isfield(laneSection,'center')
        obj.center = ODR.roadPKG.lanesPKG.laneSectionPKG.center();
        obj.center = obj.center.centerXML(laneSection.center);
    end
end
