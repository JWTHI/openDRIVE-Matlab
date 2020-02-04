classdef parkingSpace
    %parkingSpace class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
       access
       restrictions
       %
       marking
    end
    
    methods
        function obj = parkingSpace()
            %parkingSpace Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = parkingSpaceXML(obj,parkingSpace)
    end
end

