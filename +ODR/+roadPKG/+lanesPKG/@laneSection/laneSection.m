classdef laneSection
    %laneSection class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        s
        singleSide
        left
        center
        right
        %own
        bbox
    end
    
    methods
        function obj = laneSection()
            %laneSection Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = laneSectionXML(obj,laneSection)
        obj = enrich(obj, laneOffsetLine, referenceLine, sStepsL, sStepsR, sStepsC)
        [laneID] = isOnLaneSection(obj,point)
        plot(obj, fig,ignoreStrings)
        obj = unenrich(obj)
    end
end

