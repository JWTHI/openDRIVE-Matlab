function obj = railroadXML(obj,railroad)
    %railroadXML  Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(railroad,'switch')
        if size(railroad.signal,2)==1
            obj.Switch{1} = ODR.roadPKG.railroadPKG.Switch();
            obj.Switch{1} = obj.Switch{1}.SwitchXML(railroad.switch);
        else
            for i=1:size(railroad.signal,2)
                obj.Switch{i} = ODR.roadPKG.railroadPKG.Switch();
                obj.Switch{i} = obj.Switch{i}.SwitchXML(railroad.switch{i});
            end
        end
    end
    
end
