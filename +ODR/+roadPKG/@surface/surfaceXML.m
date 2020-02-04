function obj = surfaceXML(obj,surface)
    %surfaceXML  Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(surface,'CRG')
        if size(surface.CRG,2)==1
            obj.CRG{1} = ODR.roadPKG.surfacePKG.CRG();
            obj.CRG{1} = obj.CRG{1}.CRGXML(surface.CRG);
        else
            for i=1:size(surface.CRG,2)
                obj.CRG{i} = ODR.roadPKG.surfacePKG.CRG();
                obj.CRG{i} = obj.CRG{i}.CRGXML(surface.CRG{i});
            end
        end
    end
end
