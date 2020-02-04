classdef material
    %material  class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
       surface
       friction
       roughness
    end
    
    methods
        function obj = material()
            %material Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = materialXML(obj,material)
    end
end

