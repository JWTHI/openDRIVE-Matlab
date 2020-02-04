classdef predecessor
    %PREDECESSOR  class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fern�ndez
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        elementType
        elementId
        contactPoint
    end
    
    methods
        function obj = predecessor()
            %PREDECESSOR Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = predecessorXML(obj,predecessor)
    end
end

