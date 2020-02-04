classdef station
    %station class definiton for open drive in matlab
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
        type
        %
        platform
    end
    
    methods
        function obj = station()
            %station Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = stationXML(obj,stationIn)
    end
end

