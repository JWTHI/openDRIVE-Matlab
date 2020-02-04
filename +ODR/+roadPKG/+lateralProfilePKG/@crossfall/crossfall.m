classdef crossfall
    %Crossfall class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        side
        s
        a
        b
        c
        d
    end
    
    methods
        function obj = crossfall()
            %crossfall Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = crossfallXML(obj,crossfall)
    end
end

