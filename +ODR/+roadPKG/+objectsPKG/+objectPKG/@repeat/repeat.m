classdef repeat
    %repeat class definiton for open drive in matlab
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
       length
       distance
       tStart
       tEnd
       widthStart
       widthEnd
       heightStart
       heightEnd
       zOffsetStart
       zOffsetEnd
    end
    
    methods
        function obj = repeat()
            %repeat Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = repeatXML(obj,repeat)
    end
end

