classdef marking
    %MARKING class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fern�ndez
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        side 
        type 
        width
        color
    end
    
    methods
        function obj = marking()
            %MARKING Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = markingXML(obj,marking)
    end
end

