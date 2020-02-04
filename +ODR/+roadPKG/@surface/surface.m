classdef surface
    %surface class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fern�ndez
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        CRG
    end
    
    methods
        function obj = surface()
            %surface Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = surfaceXML(obj,surface)
    end
end

