function geometryType = getGeometryCaseXML(obj,geometry)
    %geometryType: get geometryType of a road segment
    % 1 :   line
    % 2 :   spiral
    % 3 :   arc
    % 4 :   poly3
    % 5 :   paramPoly3
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    geometryType = 0;
    if isfield(geometry,'line')
        geometryType = 1;
    end
    if isfield(geometry,'spiral')
        geometryType = 2;
    end
    if isfield(geometry,'arc')
        geometryType = 3;
    end
    if isfield(geometry,'poly3')
        geometryType = 4;
    end
    if isfield(geometry,'paramPoly3')
        geometryType = 5;
    end
    
    if geometryType == 0
        error('Geometry type undefined')
    end
end