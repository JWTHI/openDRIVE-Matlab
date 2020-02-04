classdef spiral < ODR.roadPKG.planViewPKG.geometry
    %SPIRAL inherited class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        curvStart
        curvEnd
    end
    
    methods
        function obj = spiral()
            %SPIRAL Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = spiralXML(obj,geometry)
        referenceLinePoints = calcReferenceLine(obj)
        [cca,ssa] =  fresnel(obj,xxa )
        a =  p1evl(obj,x, coef)
        a =  polevl(obj,x, coef)
    end
end

