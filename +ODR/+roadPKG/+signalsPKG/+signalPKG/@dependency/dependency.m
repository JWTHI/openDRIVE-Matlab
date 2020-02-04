classdef dependency
    %dependency  class definiton for open drive in matlab
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
       type
    end
    
    methods
        function obj = dependency()
            %dependency Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = dependencyXML(obj,dependency)
    end
end

