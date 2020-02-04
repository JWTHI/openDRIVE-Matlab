classdef control
    %control class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        signalId
        type
    end
    
    methods
        function obj = control()
            %control Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = controlXML(obj,control)
    end
end

