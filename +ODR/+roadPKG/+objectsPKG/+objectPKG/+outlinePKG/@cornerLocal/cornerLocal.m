classdef cornerLocal
    %cornerLocal  class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
       u
       v
       z
       height
    end
    
    methods
        function obj = cornerLocal()
            %cornerLocal Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = cornerLocalXML(obj,cornerLocal)
    end
end

