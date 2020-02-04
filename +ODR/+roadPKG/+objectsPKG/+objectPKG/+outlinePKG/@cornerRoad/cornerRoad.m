classdef cornerRoad
    %cornerRoad class definiton for open drive in matlab
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
       t
       dz
       height
    end
    
    methods
        function obj = cornerRoad()
            %cornerRoad Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = cornerRoadXML(obj,cornerRoad)
    end
end

