function obj = crossfallXML(obj,crossfall)
    %crossfallXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    obj.side = crossfall.Attributes.side;
    obj.s = str2double(crossfall.Attributes.s);
    obj.a = str2double(crossfall.Attributes.a);
    obj.b = str2double(crossfall.Attributes.b);
    obj.c = str2double(crossfall.Attributes.c);
    obj.d = str2double(crossfall.Attributes.d);
    
end
