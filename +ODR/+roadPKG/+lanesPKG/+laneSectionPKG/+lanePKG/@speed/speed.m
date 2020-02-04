classdef speed
    %speed class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        sOffset
        max
        unit
    end
    
    methods
        function obj = speed()
            %speed Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = speedXML(obj,speed)
    end
end

