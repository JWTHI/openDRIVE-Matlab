function obj = mainTrackXML(obj,mainTrack)
    %mainTrackXML  Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(mainTrack.Attributes,'id')
        obj.id  = str2double(mainTrack.Attributes.id);
    end
    if isfield(mainTrack.Attributes,'s')
        obj.s  = str2double(mainTrack.Attributes.s);
    end
    if isfield(mainTrack.Attributes,'dir')
        obj.dir  = mainTrack.Attributes.dir;
    end
    
end
