classdef outline
    %outline  class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
       cornerRoad
       cornerLocal
    end
    
    methods
        function obj = outline()
            %outline Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = outlineXML(obj,outline)
    end
end

