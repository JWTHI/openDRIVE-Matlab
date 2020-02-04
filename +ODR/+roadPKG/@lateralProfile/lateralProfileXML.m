function obj = lateralProfileXML(obj,lateralProfile)
    %LATERALPROFILEXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(lateralProfile,'superelevation')
        superelevations = lateralProfile.superelevation;
        if size(superelevations,2) == 1
            obj.superelevation{1} = ODR.roadPKG.lateralProfilePKG.superelevation();
            obj.superelevation{1} = obj.superelevation{1}.superelevationXML(superelevations);
        else
            for i = 1:size(superelevations,2)
                obj.superelevation{i} = ODR.roadPKG.lateralProfilePKG.superelevation();
                obj.superelevation{i} = obj.superelevation{i}.superelevationXML(superelevations{i});
            end
        end
    end
    
    if isfield(lateralProfile,'crossfall')
        crossfalls = lateralProfile.crossfall;
        if size(crossfalls,2) == 1
            obj.crossfall{1} = ODR.roadPKG.lateralProfilePKG.crossfall();
            obj.crossfall{1} = obj.crossfall{1}.crossfallXML(crossfalls);
        else
            for i = 1:size(crossfalls,2)
                obj.crossfall{i} = ODR.roadPKG.lateralProfilePKG.crossfall();
                obj.crossfall{i} = obj.crossfall{i}.crossfallXML(crossfalls{i});
            end
        end
    end
    
    if isfield(lateralProfile,'shape')
        shapes = lateralProfile.shape;
        if size(shapes,2) == 1
            obj.shape{1} = ODR.roadPKG.lateralProfilePKG.shape();
            obj.shape{1} = obj.shape{1}.shapeXML(shapes);
        else
            for i = 1:size(shapes,2)
                obj.shape{i} = ODR.roadPKG.lateralProfilePKG.shape();
                obj.shape{i} = obj.shape{i}.shapeXML(shapes{i});
            end
        end
    end
end
