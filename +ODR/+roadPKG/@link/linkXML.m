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
        obj.predecessor = ODR.roadPKG.linkPKG.predecessor();
        obj.predecessor = obj.predecessor.predecessorXML(link.predecessor);
    end
    if isfield(link,'successor')
        obj.successor = ODR.roadPKG.linkPKG.successor();
        obj.successor = obj.successor.successorXML(link.successor);
    end
    if isfield(link,'neighbor')
        if size(link.neighbor,2)==1
            obj.neighbor{1} = ODR.roadPKG.linkPKG.neighbor();
            obj.neighbor{1} = obj.neighbor.neighborXML(link.neighbor);
        else
            for i=1:size(link.neighbor,2)
                obj.neighbor{i} = ODR.roadPKG.linkPKG.neighbor();
                obj.neighbor{i} = obj.neighbor.neighborXML(link.neighbor{i});
            end
        end
    end
end

