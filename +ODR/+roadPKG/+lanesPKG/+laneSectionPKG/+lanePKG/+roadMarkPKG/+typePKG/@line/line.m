classdef line
    %line class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        length
        space
        tOffset
        sOffset
        rule
        width
    end
    
    methods
        function obj = line()
            %line Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = lineXML(obj,line)
    end
end

