classdef geoReference
    %geoReference class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        string
    end
    
    methods
        function obj = geoReference()
            %geoReference Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = geoReferenceXML(obj,geoReference)
    end
end

