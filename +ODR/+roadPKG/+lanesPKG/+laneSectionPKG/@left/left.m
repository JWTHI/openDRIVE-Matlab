classdef left
    %left class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        lane
        % Extened
        bbox
    end
    
    methods
        function obj = left()
            %left Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = leftXML(obj,left)
    end
end

