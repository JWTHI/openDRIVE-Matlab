classdef arc < ODR.roadPKG.planViewPKG.geometry
    %ARC inherited class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        curvature
    end
    
    methods
        function obj = arc()
            %ARC Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = arcXML(obj,geometry)
        referenceLinePoints = calcReferenceLine(obj)
    end
end

