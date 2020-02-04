classdef lane
    %LANE class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        id
        type
        level
        %
        link
        width
        border
        roadMark
        material
        visibility
        speed
        access
        height
        rule
        %own
        boundaryLineIn
        boundaryLineOut
        widthPoints
        sPoints
        tPoints
        bbox
    end
    
    methods
        function obj = lane()
            %LANE Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = laneXML(obj,lane)
        [boundaryLinePointsIn,boundaryLinePointsOut] = calcBoundaryLinePoints(obj,widthOffset,laneOffsetLine,deltaReferenceLine, direction)
        obj = enrich(obj, laneOthers, innerIds, laneOffsetLine, referenceLine, sSteps, direction,centerFlag)
        laneID = isOnLane(obj,point)
        plot(obj, fig, ignoreStrings)
        obj = unenrich(obj)
    end
end

