function obj = cornerRoadXML(obj,cornerRoad)
    %cornerRoadXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(cornerRoad.Attributes,'s')
        obj.s  = str2double(cornerRoad.Attributes.s);
    end
    if isfield(cornerRoad.Attributes,'t')
        obj.t  = str2double(cornerRoad.Attributes.t);
    end
    if isfield(cornerRoad.Attributes,'dz')
        obj.dz  = str2double(cornerRoad.Attributes.dz);
    end
    if isfield(cornerRoad.Attributes,'height')
        obj.height  = str2double(cornerRoad.Attributes.height);
    end
end
