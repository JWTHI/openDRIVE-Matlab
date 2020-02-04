function obj = connectionXML(obj,connection)
    %connectionlerXML  Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(connection.Attributes,'contactPoint')
        obj.contactPoint    = connection.Attributes.contactPoint;
    end
    if isfield(connection.Attributes,'id')
        obj.id    = str2double(connection.Attributes.id);
    end
    if isfield(connection.Attributes,'incomingRoad')
        obj.incomingRoad    = str2double(connection.Attributes.incomingRoad);
    end
    if isfield(connection.Attributes,'connectingRoad')
        obj.connectingRoad    = str2double(connection.Attributes.connectingRoad);
    end
    
    if isfield(connection,'laneLink')
        if size(connection.laneLink,2)==1
            obj.laneLink{1} = ODR.junctionPKG.connectionPKG.laneLink();
            obj.laneLink{1} = obj.laneLink{1}.laneLinkXML(connection.laneLink);
        else
            for i=1:size(connection.laneLink,2)
                obj.laneLink{i} = ODR.junctionPKG.connectionPKG.laneLink();
                obj.laneLink{i} = obj.laneLink{i}.laneLinkXML(connection.laneLink{i});
            end
        end
    end
    
end

