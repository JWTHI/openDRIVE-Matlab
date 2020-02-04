function obj = linkXML(obj,link)
    %LINKXML  Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(link,'predecessor')
        obj.predecessor = ODR.roadPKG.lanesPKG.laneSectionPKG.lanePKG.linkPKG.predecessor();
        obj.predecessor = obj.predecessor.predecessorXML(link.predecessor);
    end
    
    if isfield(link,'successor')
        obj.successor = ODR.roadPKG.lanesPKG.laneSectionPKG.lanePKG.linkPKG.successor();
        obj.successor = obj.successor.successorXML(link.successor);
    end
    
end
