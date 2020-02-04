classdef lateralProfile
    %LATERALPROFILE class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        superelevation
        crossfall
        shape
    end
    
    methods
        function obj = lateralProfile()
            %Type Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = lateralProfileXML(obj,lateralProfile)
    end
end

