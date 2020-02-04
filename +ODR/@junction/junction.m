classdef junction
    %junction   class definiton for open drive in matlab
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
        %
        connection
        priority
        controller
        %Own
        connectionMatrixLane
        connectionMatrixLaneDriving
        CMLidLane
        CMLidLaneType
        CMLidRoad
        connectionMatrixRoad
        CMRidRoad
    end
    
    methods
        function obj = junction()
            %junction Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = junctionXML(obj,junctionIn)
    end
end

