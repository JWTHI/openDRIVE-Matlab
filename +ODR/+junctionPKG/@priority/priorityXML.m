function obj = priorityXML(obj,priority)
    %prioritylerXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(priority.Attributes,'high')
        obj.high    = str2double(priority.Attributes.high);
    end
    if isfield(priority.Attributes,'low')
        obj.low    = str2double(priority.Attributes.low);
    end
end

