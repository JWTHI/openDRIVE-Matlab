function obj = roadXML(obj,roadIn)
%ROADXML Summary of this function goes here
%   Detailed explanation goes here
if isfield(roadIn.Attributes,'name')
    obj.name    = roadIn.Attributes.name;
end
if isfield(roadIn.Attributes,'length')
    obj.length    = str2double(roadIn.Attributes.length);
end
if isfield(roadIn.Attributes,'id')
    obj.id    = str2double(roadIn.Attributes.id);
end
if isfield(roadIn.Attributes,'junction')
    obj.junction    = str2double(roadIn.Attributes.junction);
end

%-LINK---------------------------------------------------------------------
if isfield(roadIn,'link')
    obj.link        = obj.link.linkXML(roadIn.link);
end
%-TYPE---------------------------------------------------------------------
if isfield(roadIn,'type')
    if size(roadIn.type,2)==1
        obj.type{1} = ODR.roadPKG.type();
        obj.type{1} = obj.type{1}.typeXML(roadIn.type);
    else
        for i=1:size(roadIn.type,2)
            obj.type{i} = ODR.roadPKG.type();
            obj.type{i} = obj.type{i}.typeXML(roadIn.type{i});
        end
    end
end
%-PLANVIEW-----------------------------------------------------------------
obj.planView        = obj.planView.planViewXML(roadIn.planView);
%-ELEVATIONPROFILE---------------------------------------------------------
if isfield(roadIn,'elevationProfile')
    obj.elevationProfile= obj.elevationProfile.elevationProfileXML(roadIn.elevationProfile);
end
%-ELEVATIONPROFILE---------------------------------------------------------
if isfield(roadIn,'lateralProfile')
    obj.lateralProfile  = obj.lateralProfile.lateralProfileXML(roadIn.lateralProfile);
end
%-LANES--------------------------------------------------------------------
if isfield(roadIn,'lanes')
    obj.lanes  = obj.lanes.lanesXML(roadIn.lanes);
end
%-OBJECTS------------------------------------------------------------------
if isfield(roadIn,'objects')
    obj.objects  = obj.objects.objectsXML(roadIn.objects);
end
%-SIGNALS------------------------------------------------------------------
if isfield(roadIn,'signals')
    obj.signals  = obj.signals.signalsXML(roadIn.signals);
end
%-surface------------------------------------------------------------------
if isfield(roadIn,'surface')
    obj.surface  = obj.surface.surfaceXML(roadIn.surface);
end
%-SIGNALS------------------------------------------------------------------
if isfield(roadIn,'railroad')
    obj.railroad  = obj.railroad.railroadXML(roadIn.railroad);
end
end

