classdef paramPoly3 < ODR.roadPKG.planViewPKG.geometry
    %PARAMPOLY inherited class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        aU
        bU
        cU
        dU
        aV
        bV
        cV
        dV
        pRange
    end
    
    methods
        function obj = paramPoly3()
            %PARAMPOLY3 Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = paramPoly3XML(obj,geometry)
        referenceLinePoints = calcReferenceLine(obj)
        
    end
end

