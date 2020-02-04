function obj = elevationProfileXML(obj,elevationProfile)
    %ELEVATIONPROFILEXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if isfield(elevationProfile,'elevation')
        elevations = elevationProfile.elevation;
        if size(elevations,2) == 1
            obj.elevation{1} = ODR.roadPKG.elevationProfilePKG.elevation();
            obj.elevation{1} = obj.elevation{1}.elevationXML(elevations);
        else
            for i = 1:size(elevations,2)
                obj.elevation{i} = ODR.roadPKG.elevationProfilePKG.elevation();
                obj.elevation{i} = obj.elevation{i}.elevationXML(elevations{i});
            end
        end
    end
end
