classdef laneOffset
    %laneOffset class definiton for open drive in matlab
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
        a
        b
        c
        d
    end
    
    methods
        function obj = laneOffset()
            %laneOffset Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = laneOffsetXML(obj,laneOffset)
        [offset] = calcLaneOffsetLine(obj,s,offset)
    end
end

