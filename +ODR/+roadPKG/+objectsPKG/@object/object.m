classdef object
    %object class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        type
        name
        id
        s
        t
        zOffset
        validLength
        orientation
        length
        width
        radius
        height
        hdg
        pitch
        roll
        %
        repeat
        outline
        material
        validity
        parkingSpace
    end
    
    methods
        function obj = object()
            %object Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = objectXML(obj,object)
    end
end

