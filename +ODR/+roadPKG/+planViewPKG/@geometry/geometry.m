classdef geometry
    %GEOMETRY abstract class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        s
        x
        y
        hdg
        length
        referenceLinePoints
    end
    
    methods
        function obj = geometry()
            %GEOMETRY Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = calcReferenceLine(obj);
    end
end

