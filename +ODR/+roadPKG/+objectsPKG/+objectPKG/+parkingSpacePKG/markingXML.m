function obj = markingXML(obj,marking)
    %MARKINGXML  Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(marking.Attributes,'side')
        obj.side = marking.Attributes.side;
    end
    if isfield(marking.Attributes,'type')
        obj.type = marking.Attributes.type;
    end
    if isfield(marking.Attributes,'width')
        obj.width = str2double(marking.Attributes.width);
    end
    if isfield(marking.Attributes,'color')
        obj.color = marking.Attributes.color;
    end
end

