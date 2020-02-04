function obj = stationXML(obj,stationIn)
    %stationXML  Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(stationIn.Attributes,'name')
        obj.name    = stationIn.Attributes.name;
    end
    if isfield(stationIn.Attributes,'id')
        obj.id    = str2double(stationIn.Attributes.id);
    end
    if isfield(stationIn.Attributes,'type')
        obj.type    = stationIn.Attributes.type;
    end
    
    if isfield(stationIn,'platform')
        if size(stationIn.platform,2)==1
            obj.platform{1} = ODR.stationPKG.platform();
            obj.platform{1} = obj.platform{1}.platformXML(stationIn.platform);
        else
            for i=1:size(stationIn.platform,2)
                obj.platform{i} = ODR.stationPKG.platform();
                obj.platform{i} = obj.platform{i}.platformXML(stationIn.platform{i});
            end
        end
    end
end

