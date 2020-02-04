function obj = SwitchXML(obj,Switch)
    %SwitchXML  Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(Switch.Attributes,'id')
        obj.id  = str2double(Switch.Attributes.id);
    end
    if isfield(Switch.Attributes,'name')
        obj.name  = Switch.Attributes.name;
    end
    if isfield(Switch.Attributes,'position')
        obj.position  = Switch.Attributes.position;
    end
    
    if isfield(Switch,'mainTrack')
        obj.mainTrack = ODR.roadPKG.railroadPKG.SwitchPKG.mainTrack();
        obj.mainTrack = obj.mainTrack.mainTrackXML(Switch.mainTrack);
    end
    if isfield(Switch,'sideTrack')
        obj.sideTrack = ODR.roadPKG.railroadPKG.SwitchPKG.sideTrack();
        obj.sideTrack = obj.sideTrack.sideTrackXML(Switch.sideTrack);
    end
    if isfield(Switch,'partner')
        obj.partner = ODR.roadPKG.railroadPKG.SwitchPKG.partner();
        obj.partner = obj.partner.partnerXML(Switch.partner);
    end
end
