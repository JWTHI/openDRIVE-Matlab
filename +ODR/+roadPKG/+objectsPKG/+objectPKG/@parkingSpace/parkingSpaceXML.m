function obj = parkingSpaceXML(obj,parkingSpace)
    %parkingSpaceXML  Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(parkingSpace.Attributes,'access')
        obj.access = parkingSpace.Attributes.access;
    end
    if isfield(parkingSpace.Attributes,'restrictions')
        obj.restrictions = parkingSpace.Attributes.restrictions;
    end
    if isfield(parkingSpace,'marking')
        if size(parkingSpace.marking,2)==1
            obj.marking{1}  = ODR.roadPKG.objectsPKG.objectPKG.parkingSpacePKG.marking();
            obj.marking{1}  = obj.marking{1}.markingXML(parkingSpace.marking);
        else
            for i=1:size(parkingSpace.marking,2)==1
                obj.marking{i}  = ODR.roadPKG.objectsPKG.objectPKG.parkingSpacePKG.marking();
                obj.marking{i}  = obj.marking{i}.markingXML(parkingSpace.marking{i});
            end
        end
    end
end
