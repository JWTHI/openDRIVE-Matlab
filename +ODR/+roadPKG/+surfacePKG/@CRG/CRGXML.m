function obj = CRGXML(obj,CRG)
    %CRGXML  Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(CRG.Attributes,'file')
        obj.file  = CRG.Attributes.file;
    end
    if isfield(CRG.Attributes,'sStart')
        obj.sStart  = str2double(CRG.Attributes.sStart);
    end
    if isfield(CRG.Attributes,'sEnd')
        obj.sEnd  = str2double(CRG.Attributes.sEnd);
    end
    if isfield(CRG.Attributes,'orientation')
        obj.orientation  = CRG.Attributes.orientation;
    end
    if isfield(CRG.Attributes,'mode')
        obj.mode  = CRG.Attributes.mode;
    end
    if isfield(CRG.Attributes,'purpose')
        obj.purpose  = CRG.Attributes.purpose;
    end
    if isfield(CRG.Attributes,'sOffset')
        obj.sOffset  = str2double(CRG.Attributes.sOffset);
    end
    if isfield(CRG.Attributes,'tOffset')
        obj.tOffset  = str2double(CRG.Attributes.tOffset);
    end
    if isfield(CRG.Attributes,'zOffset')
        obj.zOffset  = str2double(CRG.Attributes.zOffset);
    end
    if isfield(CRG.Attributes,'zScale')
        obj.zScale  = str2double(CRG.Attributes.zScale);
    end
    if isfield(CRG.Attributes,'hOffset')
        obj.hOffset  = str2double(CRG.Attributes.hOffset);
    end
end
