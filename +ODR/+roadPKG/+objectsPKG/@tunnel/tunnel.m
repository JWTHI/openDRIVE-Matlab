classdef tunnel
    %tunnel class definiton for open drive in matlab
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
        length
        name
        id
        type
        lighting
        daylight
        %
        validity
    end
    
    methods
        function obj = tunnel()
            %tunnel Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = tunnelXML(obj,tunnel)
    end
end

