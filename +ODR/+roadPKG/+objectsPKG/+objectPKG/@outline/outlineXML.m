function obj = outlineXML(obj,outline)
    %outlineXML  Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(outline,'cornerRoad')
        if size(outline.cornerRoad,2)==1
            obj.cornerRoad{1}  = ODR.roadPKG.objectsPKG.objectPKG.outlinePKG.cornerRoad();
            obj.cornerRoad{1}  = obj.cornerRoad{1}.cornerRoadXML(outline.cornerRoad);
        else
            for i=1:size(outline.cornerRoad,2)
                obj.cornerRoad{i}  = ODR.roadPKG.objectsPKG.objectPKG.outlinePKG.cornerRoad();
                obj.cornerRoad{i}  = obj.cornerRoad{i}.cornerRoadXML(outline.cornerRoad{i});
            end
        end
    end
    if isfield(outline,'cornerLocal')
        if size(outline.cornerLocal,2)==1
            obj.cornerLocal{1}  = ODR.roadPKG.objectsPKG.objectPKG.outlinePKG.cornerLocal();
            obj.cornerLocal{1}  = obj.cornerLocal{1}.cornerLocalXML(outline.cornerLocal);
        else
            for i=1:size(outline.cornerLocal,2)
                obj.cornerLocal{i}  = ODR.roadPKG.objectsPKG.objectPKG.outlinePKG.cornerLocal();
                obj.cornerLocal{i}  = obj.cornerLocal{i}.cornerLocalXML(outline.cornerLocal{i});
            end
        end
    end
end
