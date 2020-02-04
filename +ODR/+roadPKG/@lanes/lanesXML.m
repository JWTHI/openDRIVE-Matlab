function obj = lanesXML(obj,lanes)
    %lanesXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    %-Laneoffset--------------------------------------------------------------
    if isfield(lanes,'laneOffset')
        if size(lanes.laneOffset,2)==1
            obj.laneOffset{1} = ODR.roadPKG.lanesPKG.laneOffset();
            obj.laneOffset{1} = obj.laneOffset{1}.laneOffsetXML(lanes.laneOffset);
        else
            for i=1:size(lanes.laneOffset,2)
                obj.laneOffset{i} = ODR.roadPKG.lanesPKG.laneOffset();
                obj.laneOffset{i} = obj.laneOffset{i}.laneOffsetXML(lanes.laneOffset{i});
            end
        end
    end
    %-Lanesection--------------------------------------------------------------
    if size(lanes.laneSection,2)==1
        obj.laneSection{1} = ODR.roadPKG.lanesPKG.laneSection();
        obj.laneSection{1} = obj.laneSection{1}.laneSectionXML(lanes.laneSection);
    else
        for i=1:size(lanes.laneSection,2)
            obj.laneSection{i} = ODR.roadPKG.lanesPKG.laneSection();
            obj.laneSection{i} = obj.laneSection{i}.laneSectionXML(lanes.laneSection{i});
        end
    end
    
end
