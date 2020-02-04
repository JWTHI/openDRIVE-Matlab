function obj = repeatXML(obj,repeat)
    %repeatXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(repeat.Attributes,'s')
        obj.s  = str2double(repeat.Attributes.s);
    end
    if isfield(repeat.Attributes,'length')
        obj.length  = str2double(repeat.Attributes.length);
    end
    if isfield(repeat.Attributes,'distance')
        obj.distance  = str2double(repeat.Attributes.distance);
    end
    if isfield(repeat.Attributes,'tStart')
        obj.tStart  = str2double(repeat.Attributes.tStart);
    end
    if isfield(repeat.Attributes,'tEnd')
        obj.tEnd  = str2double(repeat.Attributes.tEnd);
    end
    if isfield(repeat.Attributes,'widthStart')
        obj.widthStart  = str2double(repeat.Attributes.widthStart);
    end
    if isfield(repeat.Attributes,'widthEnd')
        obj.widthEnd  = str2double(repeat.Attributes.widthEnd);
    end
    if isfield(repeat.Attributes,'heightStart')
        obj.heightStart  = str2double(repeat.Attributes.heightStart);
    end
    if isfield(repeat.Attributes,'heightEnd')
        obj.heightEnd  = str2double(repeat.Attributes.heightEnd);
    end
    if isfield(repeat.Attributes,'zOffsetStart')
        obj.zOffsetStart  = str2double(repeat.Attributes.zOffsetStart);
    end
    if isfield(repeat.Attributes,'zOffsetEnd')
        obj.zOffsetEnd  = str2double(repeat.Attributes.zOffsetEnd);
    end
end
