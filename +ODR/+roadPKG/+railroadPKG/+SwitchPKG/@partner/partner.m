classdef partner
    %partner class definiton for open drive in matlab
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
    end
    
    methods
        function obj = partner()
            %partner Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = partnerXML(obj,partner)
    end
end

