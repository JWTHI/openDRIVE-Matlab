classdef shape
    %shape class definiton for open drive in matlab
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
        t
        a
        b
        c
        d
    end
    
    methods
        function obj = shape()
            %shape Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = shapeXML(obj,shape)
    end
end

