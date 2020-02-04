classdef header
    %header  class definiton for open drive header in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        revMajor
        revMinor
        name
        version
        date
        north
        south
        east
        west
        vendor
        %
        geoReference
    end
    
    methods
        function obj = header()
            %header Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = headerXML(obj,headerIn)
    end
end

