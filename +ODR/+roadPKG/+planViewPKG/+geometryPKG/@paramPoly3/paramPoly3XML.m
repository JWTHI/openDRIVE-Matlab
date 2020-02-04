function obj = paramPoly3XML(obj,geometry)
    %paramPoly3XML  Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    obj.s           = str2double(geometry.Attributes.s);
    obj.x           = str2double(geometry.Attributes.x);
    obj.y           = str2double(geometry.Attributes.y);
    obj.hdg         = str2double(geometry.Attributes.hdg);
    obj.length      = str2double(geometry.Attributes.length);
    obj.aU          = str2double(geometry.paramPoly3.Attributes.aU);
    obj.bU          = str2double(geometry.paramPoly3.Attributes.bU);
    obj.cU          = str2double(geometry.paramPoly3.Attributes.cU);
    obj.dU          = str2double(geometry.paramPoly3.Attributes.dU);
    obj.aV          = str2double(geometry.paramPoly3.Attributes.aV);
    obj.bV          = str2double(geometry.paramPoly3.Attributes.bV);
    obj.cV          = str2double(geometry.paramPoly3.Attributes.cV);
    obj.dV          = str2double(geometry.paramPoly3.Attributes.dV);
    if isfield(geometry.paramPoly3.Attributes,'pRange')
        obj.pRange      = str2double(geometry.paramPoly3.Attributes.pRange);
    else
        obj.pRange      = 'normalized';
    end
end