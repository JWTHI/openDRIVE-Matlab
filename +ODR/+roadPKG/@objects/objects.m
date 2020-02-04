classdef objects
    %objects class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        object
        objectReference
        tunnel
        bridge
    end
    
    methods
        function obj = objects()
            %objects Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = objectsXML(obj,objects)
    end
end

