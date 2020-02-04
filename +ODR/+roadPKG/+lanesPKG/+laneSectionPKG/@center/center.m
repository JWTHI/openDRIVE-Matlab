classdef center
    %center  class definiton for open drive in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        lane
        %own
        bbox
    end
    
    methods
        function obj = center()
            %center Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = centerXML(obj,center)
    end
end

