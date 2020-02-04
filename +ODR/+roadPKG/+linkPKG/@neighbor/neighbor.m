classdef neighbor
    %NEIGHBOR class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        side
        elementId
        direction
    end
    
    methods
        function obj = neighbor()
            %NEIGHBOR Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = neighborXML(obj,neighbor)
    end
end

