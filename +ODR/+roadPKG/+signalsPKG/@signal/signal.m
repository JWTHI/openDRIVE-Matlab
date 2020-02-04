classdef signal
    %signal  class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        s
        t
        id
        name
        dynamic
        orientation
        zOffset
        country
        type
        subtype
        value
        unit
        height
        width
        text
        hOffset
        pitch
        roll
        %
        validity
        dependency
    end
    
    methods
        function obj = signal()
            %signal Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = signalXML(obj,signal)
        plot(obj, road, fig)
    end
end

