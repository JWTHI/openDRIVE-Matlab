function obj = visibilityXML(obj,visibility)
    %visibilityXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    obj.sOffset         = str2double(visibility.Attributes.sOffset);
    obj.forward         = str2double(visibility.Attributes.forward);
    obj.back            = str2double(visibility.Attributes.back);
    obj.left            = str2double(visibility.Attributes.left);
    obj.right           = str2double(visibility.Attributes.right);
end
