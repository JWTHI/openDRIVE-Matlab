classdef elevationProfile
    %ELEVATIONPROFILE class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        elevation
    end
    
    methods
        function obj = elevationProfile()
            %Type Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = elevationProfileXML(obj,elevationProfile)
    end
end

