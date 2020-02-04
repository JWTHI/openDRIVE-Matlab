function obj = platformXML(obj,platform)
    %platformlerXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(platform.Attributes,'name')
        obj.name    = platform.Attributes.name;
    end
    if isfield(platform.Attributes,'id')
        obj.id    = str2double(platform.Attributes.id);
    end
    
    if isfield(platform,'segment')
        if size(platform.segment,2)==1
            obj.segment{1} = ODR.junctionPKG.platformPKG.segment();
            obj.segment{1} = obj.segment{1}.segmentXML(platform.segment);
        else
            for i=1:size(platform.segment,2)
                obj.segment{i} = ODR.junctionPKG.platformPKG.segment();
                obj.segment{i} = obj.segment{i}.segmentXML(platform.segment{i});
            end
        end
    end
    
end

