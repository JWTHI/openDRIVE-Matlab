classdef signalReference
    %signalReference class definiton for open drive in matlab
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
        id
        orientation
        %
        validity
    end
    
    methods
        function obj = signalReference()
            %signalReference Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = signalReferenceXML(obj,signalReference)
    end
end

