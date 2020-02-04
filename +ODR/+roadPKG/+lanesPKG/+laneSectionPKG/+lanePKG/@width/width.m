classdef width
    %LINK class definiton for open drive in matlab
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
        a
        b
        c
        d
    end
    
    methods
        function obj = width()
            %WIDTH Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = widthXML(obj,width)
        widthPoints = calcWidth(obj, widthPoints, deltaReferenceLine)
    end
end

