classdef poly3 < ODR.roadPKG.planViewPKG.geometry
    %POLY3 inherited class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        a
        b
        c
        d
    end
    
    methods
        function obj = poly3()
            %POLY3 Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = poly3XML(obj,geometry)
        referenceLinePoints = calcReferenceLine(obj)
        
    end
end

