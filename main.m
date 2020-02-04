%
%----------------------------------------------------------------------
% BSD 3-Clause License
%
% Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
% All rights reserved.
%----------------------------------------------------------------------

clear all; close all; clc

global pointResolution
pointResolution = 0.2; % each 20 centimeters a point

ignoreStrings ={'signals',...
    'biking',...
    'restricted',...
    'sidewalk',...
    'rail'};


%NOTE: Download file http://www.opendrive.org/tools/sample1.1.xodr for
%following example

MAP = ODR.OpenDRIVE();
MAP = MAP.OpenDRIVEXML('sample1_1')
DeltaROI = [5 -5 5 -5];

ROI1 = [-80 -45 2460 2490];
MAP = MAP.enrich(ROI1);
MAP.plot([],ROI1+DeltaROI,[]);

ROI3 = [-480 -300 2140 2280];
MAP = MAP.enrich(ROI3);
MAP.plot([],ROI3+DeltaROI,[]);

ROI2 = [];
MAP = MAP.enrich([ROI2]);
MAP.plot([],ROI2,[]);

point = [-51 2465];
[laneSectionNr, laneID,roadID] = MAP.getRoad_pos(point);
