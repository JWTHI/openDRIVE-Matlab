classdef visibility
    %visibility class definiton for open drive in matlab
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
        forward
        back
        left
        right
    end
    
    methods
        function obj = visibility()
            %visibility Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = visibilityXML(obj,visibility)
    end
end

