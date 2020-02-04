classdef bridge
    %bridge  class definiton for open drive in matlab
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
        length
        name
        id
        type
        %
        validity
    end
    
    methods
        function obj = bridge()
            %bridge Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = bridgeXML(obj,bridge)
    end
end

