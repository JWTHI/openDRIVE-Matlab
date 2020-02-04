classdef right
    %right class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fern�ndez
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        lane
        %
        bbox
    end
    
    methods
        function obj = right()
            %right Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = rightXML(obj,right)
    end
end

