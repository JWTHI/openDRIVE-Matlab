classdef line < ODR.roadPKG.planViewPKG.geometry
    %LINE inherited class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    methods
        function obj = line()
            %LINE Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = lineXML(obj,geometry)
        referenceLinePoints = calcReferenceLine(obj)
        
    end
end

