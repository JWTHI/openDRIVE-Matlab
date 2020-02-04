function obj = planViewXML(obj,planView)
    %PLANVIEWXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    %Get all geometry entries
    geometries = planView.geometry;
    if size(geometries,2) == 1
        switch  obj.getGeometryCaseXML(geometries)
            case 1
                obj.geometry{1} = ODR.roadPKG.planViewPKG.geometryPKG.line();
                obj.geometry{1} = obj.geometry{1}.lineXML(geometries);
            case 2
                obj.geometry{1} = ODR.roadPKG.planViewPKG.geometryPKG.spiral();
                obj.geometry{1} = obj.geometry{1}.spiralXML(geometries);
            case 3
                obj.geometry{1} = ODR.roadPKG.planViewPKG.geometryPKG.arc();
                obj.geometry{1} = obj.geometry{1}.arcXML(geometries);
            case 4
                obj.geometry{1} = ODR.roadPKG.planViewPKG.geometryPKG.poly3();
                obj.geometry{1} = obj.geometry{1}.polx3XML(geometries);
            case 5
                obj.geometry{1} = ODR.roadPKG.planViewPKG.geometryPKG.paramPoly3();
                obj.geometry{1} = obj.geometry{1}.paramPoly3XML(geometries);
        end
    else
        for i = 1:size(geometries,2)
            switch  obj.getGeometryCaseXML(geometries{i})
                case 1
                    obj.geometry{i} = ODR.roadPKG.planViewPKG.geometryPKG.line();
                    obj.geometry{i} = obj.geometry{i}.lineXML(geometries{i});
                case 2
                    obj.geometry{i} = ODR.roadPKG.planViewPKG.geometryPKG.spiral();
                    obj.geometry{i} = obj.geometry{i}.spiralXML(geometries{i});
                case 3
                    obj.geometry{i} = ODR.roadPKG.planViewPKG.geometryPKG.arc();
                    obj.geometry{i} = obj.geometry{i}.arcXML(geometries{i});
                case 4
                    obj.geometry{i} = ODR.roadPKG.planViewPKG.geometryPKG.poly3();
                    obj.geometry{i} = obj.geometry{i}.polx3XML(geometries{i});
                case 5
                    obj.geometry{i} = ODR.roadPKG.planViewPKG.geometryPKG.paramPoly3();
                    obj.geometry{i} = obj.geometry{i}.paramPoly3XML(geometries{i});
            end
        end
    end
end

