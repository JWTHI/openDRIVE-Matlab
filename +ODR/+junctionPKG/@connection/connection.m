classdef connection
    %connection class definiton for open drive in matlab
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
        incomingRoad
        connectingRoad
        contactPoint
        %
        laneLink
    end
    
    methods
        function obj = connection()
            %connection Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = connectionXML(obj,connection)
    end
end

