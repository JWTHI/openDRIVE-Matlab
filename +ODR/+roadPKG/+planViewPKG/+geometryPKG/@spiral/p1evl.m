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

function a =  p1evl(obj,x, coef)
    %p1evl
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    %
    a = x + coef(1);
    for i=1:numel(coef)
        a = a * x + coef(i);
    end
end