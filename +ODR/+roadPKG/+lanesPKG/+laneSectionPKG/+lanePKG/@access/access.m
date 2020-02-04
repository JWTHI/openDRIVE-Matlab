classdef access
    %access class definiton for open drive in matlab
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
        restriction
    end
    
    methods
        function obj = access()
            %access Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = accessXML(obj,access)
    end
end

