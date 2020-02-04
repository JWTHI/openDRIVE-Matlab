classdef controller
    %controller class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        id
        type
        sequence
    end
    
    methods
        function obj = controller()
            %controller Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = controllerXML(obj,controller)
    end
end

