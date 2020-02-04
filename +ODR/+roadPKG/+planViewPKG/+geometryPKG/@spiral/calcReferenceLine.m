%{
 This File is based on:

 * ===================================================
 *  file:       odrSpiral.c
 * ---------------------------------------------------
 *  purpose:	free method for computing spirals
 *              in OpenDRIVE applications 
 * ---------------------------------------------------
 *  using methods of CEPHES library
 * ---------------------------------------------------
 *  first edit:	09.03.2010 by M. Dupuis @ VIRES GmbH
 *  last mod.:  09.03.2010 by M. Dupuis @ VIRES GmbH
 * ===================================================
    Copyright 2010 VIRES Simulationstechnologie GmbH

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
    
    
    NOTE:
    The methods have been realized using the CEPHES library 

        http://www.netlib.org/cephes/

    and do neither constitute the only nor the exclusive way of implementing 
    spirals for OpenDRIVE applications. Their sole purpose is to facilitate 
    the interpretation of OpenDRIVE spiral data.
%}
function obj = calcReferenceLine(obj)
    %CALCREFERENCELINE of a spiral
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    %
    
    global pointResolution
    
    curvEnd = obj.curvEnd;
    curvStart = obj.curvStart;
    
    startPos(1) = obj.x;
    startPos(2) = obj.y;
    length = obj.length;
    heading = obj.hdg;
    s = obj.s;
    
    if length ~=0
        cDot = (curvEnd-curvStart)/length;
        sStart = curvStart/cDot;
        sEnd = curvEnd/cDot;
        a = sqrt(pi/ abs( cDot ) );
        [offset(1),offset(2)] = obj.fresnel(sStart/a);
        offset(3) = sStart^2*cDot*0.5 ;
        offset(1) = offset(1)*a;
        offset(2) = offset(2)*a*sign(cDot);
        
        i=1;
        refs = [sStart:pointResolution:sEnd,sEnd];
        if refs(end) == refs(end-1)
            refs(end) = [];
        end
        %FIXME predifne referenceLinePoints to speed up
        for sIn=refs 
            [referenceLinePoints(i,1),referenceLinePoints(i,2)] = obj.fresnel(sIn/a);
            referenceLinePointsHead(i) = sIn^2*cDot*0.5 ;
            referenceLinePointsS(i) = s+sIn -sStart;
            i=i+1;
        end
        referenceLinePoints(:,1) = referenceLinePoints(:,1)*a;
        referenceLinePoints(:,2) = referenceLinePoints(:,2)*a*sign(cDot);
        
        referenceLinePoints = referenceLinePoints - offset(1:2);
        
        rotMat = [cos(heading-offset(3)), -sin(heading-offset(3)); sin(heading-offset(3)), cos(heading-offset(3))];
        
        referenceLinePointsRot = rotMat*referenceLinePoints';
        referenceLinePoints = referenceLinePointsRot';
        referenceLinePoints = referenceLinePoints +startPos ;
        
        referenceLinePoints(:,3) = referenceLinePointsHead - offset(3) +heading;
        referenceLinePoints(:,4) = referenceLinePointsS;
    else
        referenceLinePoints(:,1) = startPos(1);
        referenceLinePoints(:,2) = startPos(2);
        referenceLinePoints(:,3) = heading;
        referenceLinePoints(:,4) = s;
    end
    obj.referenceLinePoints = referenceLinePoints;
    
end

