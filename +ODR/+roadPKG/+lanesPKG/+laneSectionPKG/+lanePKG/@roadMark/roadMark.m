classdef roadMark
    %roadMark class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    
    properties
        sOffset
        type
        weight
        color
        material
        width
        laneChnage
        height
        %
        typeObj
        %
        validS
    end
    
    methods
        function obj = roadMark()
            %roadMark Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = roadMarkXML(obj,roadMark)
        obj= enrich(obj,deltaReferenceLineS,nextsOffset)
        obj = collapse(obj)
        plot(obj, fig, boundaryLineOut)
        obj= unenrich(obj)
    end
end

