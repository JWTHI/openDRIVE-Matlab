classdef laneLink
    %laneLink  class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        from
        to
    end
    
    methods
        function obj = laneLink()
            %laneLink Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = laneLinkXML(obj,laneLink)
    end
end

