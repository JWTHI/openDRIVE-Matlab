function obj = sideTrackXML(obj,sideTrack)
    %sideTrackXML  Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(sideTrack.Attributes,'id')
        obj.id  = str2double(sideTrack.Attributes.id);
    end
    if isfield(sideTrack.Attributes,'s')
        obj.s  = str2double(sideTrack.Attributes.s);
    end
    if isfield(sideTrack.Attributes,'dir')
        obj.dir  = sideTrack.Attributes.dir;
    end
    
end
