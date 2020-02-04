function obj = unenrich(obj)
% Gnerate the reference line
for i=1:size(obj.geometry,2)
    obj.geometry{i}.referenceLinePoints = [];
end
obj.referenceLine = [];
end