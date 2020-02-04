function obj = headerXML(obj,headerIn)
    %headerXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(headerIn.Attributes,'revMajor')
        obj.revMajor    = str2double(headerIn.Attributes.revMajor);
    end
    if isfield(headerIn.Attributes,'revMinor')
        obj.revMinor    = str2double(headerIn.Attributes.revMinor);
    end
    if isfield(headerIn.Attributes,'name')
        obj.name    = headerIn.Attributes.name;
    end
    if isfield(headerIn.Attributes,'version')
        obj.version    = str2double(headerIn.Attributes.version);
    end
    if isfield(headerIn.Attributes,'date')
        obj.date    = headerIn.Attributes.date;
    end
    if isfield(headerIn.Attributes,'north')
        obj.north    = str2double(headerIn.Attributes.north);
    end
    if isfield(headerIn.Attributes,'south')
        obj.south    = str2double(headerIn.Attributes.south);
    end
    if isfield(headerIn.Attributes,'east')
        obj.east    = str2double(headerIn.Attributes.east);
    end
    if isfield(headerIn.Attributes,'west')
        obj.west    = str2double(headerIn.Attributes.west);
    end
    if isfield(headerIn.Attributes,'vendor')
        obj.vendor    = headerIn.Attributes.vendor;
    end
    
    %-geoReference-------------------------------------------------------------
    if isfield(headerIn,'geoReference')
        if size(headerIn.geoReference,2)==1
            obj.geoReference{1} = ODR.headerPKG.geoReference();
            obj.geoReference{1} = obj.geoReference{1}.geoReferenceXML(headerIn.geoReference);
        else
            for i=1:size(headerIn.geoReference,2)
                obj.geoReference{i} = ODR.headerPKG.geoReference();
                obj.geoReference{i} = obj.geoReference{i}.geoReferenceXML(headerIn.geoReference{i});
            end
        end
    end
    
end

