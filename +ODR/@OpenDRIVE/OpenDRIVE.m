classdef OpenDRIVE
    %OpenDRIVE class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        header
        road
        junction
        junctionGroup
        controller
        station
        %ownProperties
        roadIds
        junctionIds
    end
    methods
        function obj = OpenDRIVE()
            obj.header = [];
            obj.road{1} = ODR.road();
        end
        obj = OpenDRIVEXML(obj,filePath)
        plot(obj,ignoreStrings,bbox_in_m, orient);
        obj = enrich(obj,bbox_in_m);
        [laneSectionNr, laneID,roadID] = getRoad_pos(obj,point)
        
    end
end

