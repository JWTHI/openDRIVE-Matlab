function obj = signalXML(obj,signal)
    %signalXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(signal.Attributes,'s')
        obj.s  = str2double(signal.Attributes.s);
    end
    if isfield(signal.Attributes,'t')
        obj.t  = str2double(signal.Attributes.t);
    end
    if isfield(signal.Attributes,'id')
        obj.id  = str2double(signal.Attributes.id);
    end
    if isfield(signal.Attributes,'name')
        obj.name  = signal.Attributes.name;
    end
    if isfield(signal.Attributes,'dynamic')
        obj.dynamic  = signal.Attributes.dynamic;
    end
    if isfield(signal.Attributes,'orientation')
        obj.orientation  = signal.Attributes.orientation;
    end
    if isfield(signal.Attributes,'zOffset')
        obj.zOffset  = str2double(signal.Attributes.zOffset);
    end
    if isfield(signal.Attributes,'country')
        obj.country  = signal.Attributes.country;
    end
    if isfield(signal.Attributes,'type')
        obj.type  = signal.Attributes.type;
    end
    if isfield(signal.Attributes,'subtype')
        obj.subtype  = signal.Attributes.subtype;
    end
    if isfield(signal.Attributes,'value')
        obj.value  = str2double(signal.Attributes.value);
    end
    if isfield(signal.Attributes,'unit')
        obj.unit  = signal.Attributes.unit;
    end
    if isfield(signal.Attributes,'height')
        obj.height  = str2double(signal.Attributes.height);
    end
    if isfield(signal.Attributes,'width')
        obj.width  = str2double(signal.Attributes.width);
    end
    if isfield(signal.Attributes,'text')
        obj.text  = signal.Attributes.text;
    end
    if isfield(signal.Attributes,'hOffset')
        obj.hOffset  = str2double(signal.Attributes.hOffset);
    end
    if isfield(signal.Attributes,'pitch')
        obj.pitch  = str2double(signal.Attributes.pitch);
    end
    if isfield(signal.Attributes,'roll')
        obj.roll  = str2double(signal.Attributes.roll);
    end
    
    
    if isfield(signal,'validity')
        if size(signal.validity,2)==1
            obj.validity{1} = ODR.roadPKG.signalsPKG.signalPKG.validity();
            obj.validity{1} = obj.validity{1}.validityXML(signal.validity);
        else
            for i=1:size(signal.validity,2)
                obj.validity{i} = ODR.roadPKG.signalsPKG.signalPKG.validity();
                obj.validity{i} = obj.validity{i}.validityXML(signal.validity{i});
            end
        end
    end
    if isfield(signal,'dependency')
        if size(signal.dependency,2)==1
            obj.dependency{1} = ODR.roadPKG.signalsPKG.signalPKG.dependency();
            obj.dependency{1} = obj.dependency{1}.dependencyXML(signal.dependency);
        else
            for i=1:size(signal.dependency,2)
                obj.dependency{i} = ODR.roadPKG.signalsPKG.signalPKG.dependency();
                obj.dependency{i} = obj.dependency{i}.dependencyXML(signal.dependency{i});
            end
        end
    end
end
