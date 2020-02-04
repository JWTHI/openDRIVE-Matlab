classdef Switch
    %Switch  class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        name
        id
        position
        %
        mainTrack
        sideTrack
        partner
    end
    
    methods
        function obj = Switch()
            %Switch Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = SwitchXML(obj,Switch)
    end
end

