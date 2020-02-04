classdef platform
    %platform  class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fern�ndez
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        id
        name
        %
        segment
    end
    
    methods
        function obj = platform()
            %platform Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = platformXML(obj,platform)
    end
end

