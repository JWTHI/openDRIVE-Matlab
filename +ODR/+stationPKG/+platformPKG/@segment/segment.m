classdef segment
    %segment class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        roadId
        sStart
        sEnd
        side
    end
    
    methods
        function obj = segment()
            %segment Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = segmentXML(obj,segment)
    end
end

