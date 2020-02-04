classdef signals
    %signals class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fern�ndez
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        signal
        signalReference
    end
    
    methods
        function obj = signals()
            %signals Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = signalsXML(obj,signals)
        plot(obj, road, fig)
    end
end

