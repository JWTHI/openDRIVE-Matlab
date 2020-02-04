classdef link
    %LINK class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fern�ndez
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        predecessor
        successor
        neighbor
    end
    
    methods
        function obj = link()
            %LINK Construct an instance of this class
            %   Detailed explanation goes here
            obj.predecessor = ODR.roadPKG.linkPKG.predecessor();
        end
        obj = linkXML(obj,link)
    end
end

