function obj = signalReferenceXML(obj,signalReference)
    %signalReferenceXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(signalReference.Attributes,'id')
        obj.id  = str2double(signalReference.Attributes.id);
    end
    if isfield(signalReference.Attributes,'s')
        obj.s  = str2double(signalReference.Attributes.s);
    end
    if isfield(signalReference.Attributes,'t')
        obj.t  = str2double(signalReference.Attributes.t);
    end
    if isfield(signalReference.Attributes,'orientation')
        obj.orientation  = signalReference.Attributes.orientation;
    end
    
    if isfield(signalReference,'validity')
        if size(signalReference.validity,2)==1
            obj.validity{1} = ODR.roadPKG.signalsPKG.signalPKG.validity();
            obj.validity{1} = obj.validity{1}.validityXML(signalReference.validity);
        else
            for i=1:size(signalReference.validity,2)
                obj.validity{i} = ODR.roadPKG.signalsPKG.signalPKG.validity();
                obj.validity{i} = obj.validity{i}.validityXML(signalReference.validity{i});
            end
        end
    end
end
