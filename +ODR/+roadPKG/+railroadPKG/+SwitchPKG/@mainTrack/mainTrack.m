classdef mainTrack
    %mainTrack class definiton for open drive in matlab
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
        function obj = mainTrack()
            %mainTrack Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = mainTrackXML(obj,mainTrack)
    end
end

