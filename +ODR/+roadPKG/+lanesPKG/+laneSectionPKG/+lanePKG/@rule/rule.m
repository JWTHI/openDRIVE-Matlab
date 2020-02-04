classdef rule
    %rule openDrive, road, lane section, lane
    %   Defines the rule class of openDRIVE parent: road, lane section,
    %   lane
    
    properties
        sOffset
        value
    end
    
    methods
        function obj = rule()
            %rule Construct an instance of this class
            %   Detailed explanation goes here
        end
        obj = ruleXML(obj,rule)
    end
end

