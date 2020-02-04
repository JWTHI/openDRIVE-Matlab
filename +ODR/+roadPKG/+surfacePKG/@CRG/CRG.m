classdef CRG
    %CRG class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        file
        sStart
        sEnd
        orientation
        mode
        purpose
        sOffset
        tOffset
        zOffset
        zScale
        hOffset
    end
    
    methods
        function obj = CRG()
            %CRG Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = CRGXML(obj,CRG)
    end
end

