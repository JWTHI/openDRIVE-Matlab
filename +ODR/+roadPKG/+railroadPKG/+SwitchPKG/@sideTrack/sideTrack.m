classdef sideTrack
    %sideTrack class definiton for open drive in matlab
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
       s
       dir
    end
    
    methods
        function obj = sideTrack()
            %sideTrack Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = sideTrackXML(obj,sideTrack)
    end
end

