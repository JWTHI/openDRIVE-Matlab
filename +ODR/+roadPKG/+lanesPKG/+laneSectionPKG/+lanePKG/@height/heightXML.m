function obj = heightXML(obj,height)
    %heightXML  Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    obj.sOffset         = str2double(height.Attributes.sOffset);
    obj.inner           = str2double(height.Attributes.inner);
    obj.outer           = str2double(height.Attributes.outer);
end
