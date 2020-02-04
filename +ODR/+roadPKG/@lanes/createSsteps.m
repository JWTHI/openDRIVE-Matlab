function [sStepsR,sStepsL,sStepsC] = createSsteps(obj,referenceLine)
    %CREATESSTEPS get s start and end values of sections
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    if size(obj.laneSection,2)>1
        sStepsL = zeros(1,size(obj.laneSection,2)+1);
        sStepsR = zeros(1,size(obj.laneSection,2)+1);
        sStepsC = zeros(1,size(obj.laneSection,2)+1);
        for i=1:size(obj.laneSection,2)
            if ~isempty(obj.laneSection{i}.left)
                sStepsL(i) =  obj.laneSection{i}.s;
            end
            if ~isempty(obj.laneSection{i}.right)
                sStepsR(i) =  obj.laneSection{i}.s;
            end
            if ~isempty(obj.laneSection{i}.center)
                sStepsC(i) =  obj.laneSection{i}.s;
            end
        end
        sStepsL(end) = referenceLine(end,4);
        sStepsR(end) = referenceLine(end,4);
        sStepsC(end) = referenceLine(end,4);
        
        sStepsL(1) = inf;
        repVector = diff([find(sStepsL~=0),size(sStepsL,2)+1]);
        sStepsLS = sStepsL(2:end);
        sStepsL(2:end) = repelem(sStepsLS(sStepsLS~=0),repVector(1:end-1));
        sStepsL(1)=0;
        
        sStepsR(1) = inf;
        repVector = diff([find(sStepsR~=0),size(sStepsR,2)+1]);
        sStepsRS = sStepsR(2:end);
        sStepsR(2:end) = repelem(sStepsRS(sStepsRS~=0),repVector(1:end-1));
        sStepsR(1)=0;
        
        sStepsC(1) = inf;
        repVector = diff([find(sStepsC~=0),size(sStepsC,2)+1]);
        sStepsCS = sStepsC(2:end);
        sStepsC(2:end) = repelem(sStepsCS(sStepsCS~=0),repVector(1:end-1));
        sStepsC(1)=0;
    else
        sStepsL(1) = 0;
        sStepsR(1) = 0;
        sStepsC(1) = 0;
        sStepsL(2) = referenceLine(end,4);
        sStepsR(2) = referenceLine(end,4);
        sStepsC(2) = referenceLine(end,4);
    end
    
    for i=1:numel(sStepsL)
        [~,idx] = min(abs(sStepsL(i)-referenceLine(:,4)));
        sStepsL(i) = referenceLine(idx,4);
    end
    for i=1:numel(sStepsR)
        [~,idx] = min(abs(sStepsR(i)-referenceLine(:,4)));
        sStepsR(i) = referenceLine(idx,4);
    end
    for i=1:numel(sStepsC)
        [~,idx] = min(abs(sStepsC(i)-referenceLine(:,4)));
        sStepsC(i) = referenceLine(idx,4);
    end
end

