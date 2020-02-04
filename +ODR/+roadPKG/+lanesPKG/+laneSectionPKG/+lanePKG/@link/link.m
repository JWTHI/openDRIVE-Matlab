classdef link
    %LINK  class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        predecessor
        successor
    end
    
    methods
        function obj = link()
            %LANE Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = linkXML(obj,link)
    end
end

