classdef validity
    %validity  class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
       fromLane
       toLane
    end
    
    methods
        function obj = validity()
            %validity Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = validityXML(obj,validity)
    end
end

