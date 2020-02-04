function obj = centerXML(obj,center)
    %centerXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fern�ndez
    % All rights reserved.
    %----------------------------------------------------------------------
    
    lanes = center.lane;
    if size(lanes,2)==1
        obj.lane{1} = ODR.roadPKG.lanesPKG.laneSectionPKG.lane();
        obj.lane{1} = obj.lane{1}.laneXML(lanes);
    else
        for i=1:size(lanes,2)
            obj.lane{i} = ODR.roadPKG.lanesPKG.laneSectionPKG.lane();
            obj.lane{i} = obj.lane{i}.laneXML(lanes{i});
        end
    end
end
