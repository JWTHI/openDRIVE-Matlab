classdef planView
    %PLANVIEW class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        geometry
        referenceLine
    end
    
    methods
        function obj = planView()
            %PLANVIEW Construct an instance of this class
            %   Detailed explanation goes here
            obj.geometry{1} = ODR.roadPKG.planViewPKG.geometry();
        end
        obj = planViewXML(obj,planView)
        geometryType = getGeometryCaseXML(obj,geometry)
        obj = calcReferenceLine(obj);
        obj = enrich(obj);
        obj = unenrich(obj);
    end
end

