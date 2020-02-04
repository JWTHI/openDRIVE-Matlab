classdef type
    %TYPE class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fern�ndez
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        s
        typeName
        speed
    end
    
    methods
        function obj = type()
            %Type Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = typeXML(obj,type)
    end
end

