function obj = junctionXML(obj,junctionIn)
    %junctionXML  Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(junctionIn.Attributes,'name')
        obj.name    = junctionIn.Attributes.name;
    end
    if isfield(junctionIn.Attributes,'id')
        obj.id    = str2double(junctionIn.Attributes.id);
    end
    
    %-connection---------------------------------------------------------------
    if isfield(junctionIn,'connection')
        if size(junctionIn.connection,2)==1
            obj.connection{1} = ODR.junctionPKG.connection();
            obj.connection{1} = obj.connection{1}.connectionXML(junctionIn.connection);
        else
            for i=1:size(junctionIn.connection,2)
                obj.connection{i} = ODR.junctionPKG.connection();
                obj.connection{i} = obj.connection{i}.connectionXML(junctionIn.connection{i});
            end
        end
    end
    
    %-priority-----------------------------------------------------------------
    if isfield(junctionIn,'priority')
        if size(junctionIn.priority,2)==1
            obj.priority{1} = ODR.junctionPKG.priority();
            obj.priority{1} = obj.priority{1}.priorityXML(junctionIn.priority);
        else
            for i=1:size(junctionIn.priority,2)
                obj.priority{i} = ODR.junctionPKG.priority();
                obj.priority{i} = obj.priority{i}.priorityXML(junctionIn.priority{i});
            end
        end
    end
    
    %-controller---------------------------------------------------------------
    if isfield(junctionIn,'controller')
        if size(junctionIn.controller,2)==1
            obj.controller{1} = ODR.junctionPKG.controller();
            obj.controller{1} = obj.controller{1}.controllerXML(junctionIn.controller);
        else
            for i=1:size(junctionIn.controller,2)
                obj.controller{i} = ODR.junctionPKG.controller();
                obj.controller{i} = obj.controller{i}.controllerXML(junctionIn.controller{i});
            end
        end
    end
    
end

