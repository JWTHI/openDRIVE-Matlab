function obj = unenrich(obj)
    %UNENRICH Remove boundary points etc from lane
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    obj.tPoints = [];
    obj.sPoints = [];
    obj.widthPoints = [];
    obj.boundaryLineIn = [];
    obj.boundaryLineOut = [];
    for i=1:size(obj.roadMark,2)
        obj.roadMark{i}.unenrich();
    end
end

