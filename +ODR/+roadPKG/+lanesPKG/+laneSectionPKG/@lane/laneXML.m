function obj = laneXML(obj,lane)
    %LANEXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    obj.id      = str2double(lane.Attributes.id);
    if obj.id ==-2
        a=1;
    end
    obj.type    = lane.Attributes.type;
    obj.level   = strcmp(lane.Attributes.level,'true');
    
    if isfield(lane,'link')
        obj.link = ODR.roadPKG.lanesPKG.laneSectionPKG.lanePKG.link();
        obj.link = obj.link.linkXML(lane.link);
    end
    
    if isfield(lane,'width')
        widths = lane.width;
        if size(widths,2) == 1
            obj.width{1} = ODR.roadPKG.lanesPKG.laneSectionPKG.lanePKG.width();
            obj.width{1} = obj.width{1}.widthXML(widths);
        else
            for i = 1:size(widths,2)
                obj.width{i} = ODR.roadPKG.lanesPKG.laneSectionPKG.lanePKG.width();
                obj.width{i} = obj.width{1}.widthXML(widths{i});
            end
        end
    end
    
    if isfield(lane,'border')
        borders = lane.border;
        if size(borders,2) == 1
            obj.border{1} = ODR.roadPKG.lanesPKG.laneSectionPKG.lanePKG.border();
            obj.border{1} = obj.border{1}.borderXML(borders);
        else
            for i = 1:size(borders,2)
                obj.border{i} = ODR.roadPKG.lanesPKG.laneSectionPKG.lanePKG.border();
                obj.border{i} = obj.border{i}.borderXML(borders{i});
            end
        end
    end
    
    if isfield(lane,'roadMark')
        roadMarks = lane.roadMark;
        if size(roadMarks,2) == 1
            obj.roadMark{1} = ODR.roadPKG.lanesPKG.laneSectionPKG.lanePKG.roadMark();
            obj.roadMark{1} = obj.roadMark{1}.roadMarkXML(roadMarks);
        else
            for i = 1:size(roadMarks,2)
                obj.roadMark{i} = ODR.roadPKG.lanesPKG.laneSectionPKG.lanePKG.roadMark();
                obj.roadMark{i} = obj.roadMark{i}.roadMarkXML(roadMarks{i});
            end
        end
    end
    
    if isfield(lane,'material')
        materials = lane.material;
        if size(materials,2) == 1
            obj.material{1} = ODR.roadPKG.lanesPKG.laneSectionPKG.lanePKG.material();
            obj.material{1} = obj.material{1}.materialXML(materials);
        else
            for i = 1:size(materials,2)
                obj.material{i} = ODR.roadPKG.lanesPKG.laneSectionPKG.lanePKG.material();
                obj.material{i} = obj.material{i}.materialXML(materials{i});
            end
        end
    end
    
    if isfield(lane,'visibility')
        visibilitys = lane.visibility;
        if size(visibilitys,2) == 1
            obj.visibility{1} = ODR.roadPKG.lanesPKG.laneSectionPKG.lanePKG.visibility();
            obj.visibility{1} = obj.visibility{1}.visibilityXML(visibilitys);
        else
            for i = 1:size(visibilitys,2)
                obj.visibility{i} = ODR.roadPKG.lanesPKG.laneSectionPKG.lanePKG.visibility();
                obj.visibility{i} = obj.visibility{i}.visibilityXML(visibilitys{i});
            end
        end
    end
    
    if isfield(lane,'speed')
        speeds = lane.speed;
        if size(speeds,2) == 1
            obj.speed{1} = ODR.roadPKG.lanesPKG.laneSectionPKG.lanePKG.speed();
            obj.speed{1} = obj.speed{1}.speedXML(speeds);
        else
            for i = 1:size(speeds,2)
                obj.speed{i} = ODR.roadPKG.lanesPKG.laneSectionPKG.lanePKG.speed();
                obj.speed{i} = obj.speed{i}.speedXML(speeds{i});
            end
        end
    end
    
    if isfield(lane,'access')
        accesss = lane.access;
        if size(accesss,2) == 1
            obj.access{1} = ODR.roadPKG.lanesPKG.laneSectionPKG.lanePKG.access();
            obj.access{1} = obj.access{1}.accessXML(accesss);
        else
            for i = 1:size(accesss,2)
                obj.access{i} = ODR.roadPKG.lanesPKG.laneSectionPKG.lanePKG.access();
                obj.access{i} = obj.access{i}.accessXML(accesss{i});
            end
        end
    end
    
    if isfield(lane,'height')
        heights = lane.height;
        if size(heights,2) == 1
            obj.height{1} = ODR.roadPKG.lanesPKG.laneSectionPKG.lanePKG.height();
            obj.height{1} = obj.height{1}.heightXML(heights);
        else
            for i = 1:size(heights,2)
                obj.height{i} = ODR.roadPKG.lanesPKG.laneSectionPKG.lanePKG.height();
                obj.height{i} = obj.height{i}.heightXML(heights{i});
            end
        end
    end
    
    if isfield(lane,'rule')
        rules = lane.rule;
        if size(rules,2) == 1
            obj.rule{1} = ODR.roadPKG.lanesPKG.laneSectionPKG.lanePKG.rule();
            obj.rule{1} = obj.rule{1}.ruleXML(rules);
        else
            for i = 1:size(rules,2)
                obj.rule{i} = ODR.roadPKG.lanesPKG.laneSectionPKG.lanePKG.rule();
                obj.rule{i} = obj.rule{i}.ruleXML(rules{i});
            end
        end
    end
end
