function obj = objectsXML(obj,objects)
    %objectsXML  Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    %-Object-------------------------------------------------------------------
    if isfield(objects,'object')
        if size(objects.object,2)==1
            obj.object{1} = ODR.roadPKG.objectsPKG.object();
            obj.object{1} = obj.object{1}.objectXML(objects.object);
        else
            for i=1:size(objects.object,2)
                obj.object{i} = ODR.roadPKG.objectsPKG.object();
                obj.object{i} = obj.object{i}.objectXML(objects.object{i});
            end
        end
    end
    
    %-objectReference----------------------------------------------------------
    if isfield(objects,'objectReference')
        if size(objects.objectReference,2)==1
            obj.objectReference{1} = ODR.roadPKG.objectsPKG.objectReference();
            obj.objectReference{1} = obj.objectReference{1}.objectReferenceXML(objects.objectReference);
        else
            for i=1:size(objects.objectReference,2)
                obj.objectReference{i} = ODR.roadPKG.objectsPKG.objectReference();
                obj.objectReference{i} = obj.objectReference{i}.objectReferenceXML(objects.objectReference{i});
            end
        end
    end
    
    %tunnel--------------------------------------------------------------------
    if isfield(objects,'tunnel')
        if size(objects.tunnel,2)==1
            obj.tunnel{1} = ODR.roadPKG.objectsPKG.tunnel();
            obj.tunnel{1} = obj.tunnel{1}.tunnelXML(objects.tunnel);
        else
            for i=1:size(objects.tunnel,2)
                obj.tunnel{i} = ODR.roadPKG.objectsPKG.tunnel();
                obj.tunnel{i} = obj.tunnel{i}.tunnelXML(objects.tunnel{i});
            end
        end
    end
    
    %bridge--------------------------------------------------------------------
    if isfield(objects,'bridge')
        if size(objects.bridge,2)==1
            obj.bridge{1} = ODR.roadPKG.objectsPKG.bridge();
            obj.bridge{1} = obj.bridge{1}.bridgeXML(objects.bridge);
        else
            for i=1:size(objects.bridge,2)
                obj.bridge{i} = ODR.roadPKG.objectsPKG.bridge();
                obj.bridge{i} = obj.bridge{i}.bridgeXML(objects.bridge{i});
            end
        end
    end
end
