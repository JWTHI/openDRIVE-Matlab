classdef junctionGroup
    %junctionGroup class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        id
        name
        type
        %
        junctionReference
    end
    
    methods
        function obj = junctionGroup()
            %junctionGroup Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = junctionGroupXML(obj,junctionGroupIn)
    end
end

