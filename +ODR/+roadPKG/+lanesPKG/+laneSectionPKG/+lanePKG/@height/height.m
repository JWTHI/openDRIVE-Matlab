classdef height
    %height class definiton for open drive in matlab
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
        inner
        outer
    end
    
    methods
        function obj = height()
            %height Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = heightXML(obj,height)
    end
end

