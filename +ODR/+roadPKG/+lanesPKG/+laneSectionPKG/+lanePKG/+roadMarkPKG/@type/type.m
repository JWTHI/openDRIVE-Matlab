classdef type
    %type class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    
    properties
        name
        width
        line
    end
    
    methods
        function obj = type()
            %type Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = typeXML(obj,type)
    end
end

