function obj= OpenDRIVEXML(obj,DataInPath)
    %OPENDRIVEXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    copyfile([DataInPath,'.xodr'],[DataInPath,'.xml'])
    MAP = xml2struct([DataInPath,'.xml']);
    
    %ROAD
    if isfield( MAP.OpenDRIVE,'header')
        obj.header = ODR.header();
        obj.header = obj.header.headerXML(MAP.OpenDRIVE.header);
    end
    
    %ROAD
    if isfield( MAP.OpenDRIVE,'road')
        roads = MAP.OpenDRIVE.road;
        if size(roads,2) == 1
            obj.road{1} = ODR.road();
            obj.road{1} = obj.road{1}.roadXML(roads);
        else
            for i = 1:size(roads,2)
                obj.road{i} = ODR.road();
                obj.road{i} = obj.road{i}.roadXML(roads{i});
            end
        end
    end
    
    %CONTROLLER
    if isfield( MAP.OpenDRIVE,'controller')
        controllers = MAP.OpenDRIVE.controller;
        if size(controllers,2)== 1
            obj.controller{1} = ODR.controller();
            obj.controller{1} = obj.controller{1}.controllerXML(controllers);
        else
            for i = 1:size(controllers,2)
                obj.controller{i} = ODR.controller();
                obj.controller{i} = obj.controller{i}.controllerXML(controllers{i});
            end
        end
    end
    
    %JUNCTION
    if isfield( MAP.OpenDRIVE,'junction')
        junctions = MAP.OpenDRIVE.junction;
        if size(junctions,2)== 1
            obj.junction{1} = ODR.junction();
            obj.junction{1} = obj.junction{1}.junctionXML(junctions);
        else
            for i = 1:size(junctions,2)
                obj.junction{i} = ODR.junction();
                obj.junction{i} = obj.junction{i}.junctionXML(junctions{i});
            end
        end
    end
    
    %JUNCTIONGROUP
    if isfield( MAP.OpenDRIVE,'junctionGroup')
        junctionGroups = MAP.OpenDRIVE.junctionGroup;
        if size(junctionGroups,2)== 1
            obj.junctionGroup{1} = ODR.junctionGroup();
            obj.junctionGroup{1} = obj.junctionGroup{1}.junctionGroupXML(junctionGroups);
        else
            for i = 1:size(junctionGroups,2)
                obj.junctionGroup{i} = ODR.junctionGroup();
                obj.junctionGroup{i} = obj.junctionGroup{i}.junctionGroupXML(junctionGroups{i});
            end
        end
    end
    
    %STATION
    if isfield( MAP.OpenDRIVE,'station')
        stations = MAP.OpenDRIVE.station;
        if size(stations,2)== 1
            obj.station{1} = ODR.station();
            obj.station{1} = obj.station{1}.stationXML(stations);
        else
            for i = 1:size(stations,2)
                obj.station{i} = ODR.station();
                obj.station{i} = obj.station{i}.stationXML(stations{i});
            end
        end
    end
end


