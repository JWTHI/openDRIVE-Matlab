classdef lanes
    %LANES class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        laneOffset
        laneSection
        %own
        laneOffsetLine
        sStepsL
        sStepsR
        sStepsC
        bbox
    end
    
    methods
        function obj = lanes()
            %lanes Construct an instance of this class
            %   Detailed explanation goes here
        end
         obj = calcLaneOffsetLine(obj,referenceLine)
        [sStepsR,sStepsL,sStepsC] = createSsteps(obj,referenceLine)
        obj = enrich(obj, bCirc, referenceLine)
        [laneSectionNr, laneID] = isOnLanes(obj,point)
        obj = lanesXML(obj,lanes)
        plot(obj, fig, ignoreStrings)
        obj = unenrich(obj)
    end
end

