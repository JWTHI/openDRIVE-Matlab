classdef road
    %ROAD  class definiton for open drive road in matlab
    %   contains the opendrive fromat with additional information
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    properties
        name
        length
        id
        junction
        %
        link
        type
        planView
        elevationProfile
        lateralProfile
        lanes
        objects
        signals
        surface
        railroad
        %
        bbox
    end
    
    methods
        function obj = road()
            %ROAD Construct an instance of this class
            %   Detailed explanation goes here
            obj.link            = ODR.roadPKG.link();
            obj.planView        = ODR.roadPKG.planView();
            obj.elevationProfile= ODR.roadPKG.elevationProfile();
            obj.lateralProfile  = ODR.roadPKG.lateralProfile();
            obj.lanes           = ODR.roadPKG.lanes();
            obj.objects         = ODR.roadPKG.objects();
            obj.signals         = ODR.roadPKG.signals();
            obj.surface         = ODR.roadPKG.surface();
            obj.railroad        = ODR.roadPKG.railroad();
        end
        obj = roadXML(obj,roadIn)
        plot(obj,fig,ignoreStrings)
        obj = enrich(obj,bCirc)
        [laneSectionNr, laneID,roadID] = isOnRoad(obj,point)
    end
end

