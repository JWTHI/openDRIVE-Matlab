function obj = signalsXML(obj,signals)
    %signalsXML Parsing the XML to the corresponding classes and properties
    %
    %----------------------------------------------------------------------
    % BSD 3-Clause License
    %
    % Copyright (c) 2020, Jonas Wurst, Alberto Flores Fernández
    % All rights reserved.
    %----------------------------------------------------------------------
    
    %-Signal-------------------------------------------------------------------
    if isfield(signals,'signal')
        if size(signals.signal,2)==1
            obj.signal{1} = ODR.roadPKG.signalsPKG.signal();
            obj.signal{1} = obj.signal{1}.signalXML(signals.signal);
        else
            for i=1:size(signals.signal,2)
                obj.signal{i} = ODR.roadPKG.signalsPKG.signal();
                obj.signal{i} = obj.signal{i}.signalXML(signals.signal{i});
            end
        end
    end
    
    %-SignalReference----------------------------------------------------------
    if isfield(signals,'signalReference')
        if size(signals.signalReference,2)==1
            obj.signalReference{1} = ODR.roadPKG.signalsPKG.signalReference();
            obj.signalReference{1} = obj.signalReference{1}.signalReferenceXML(signals.signalReference);
        else
            for i=1:size(signals.signalReference,2)
                obj.signalReference{i} = ODR.roadPKG.signalsPKG.signalReference();
                obj.signalReference{i} = obj.signalReference{i}.signalReferenceXML(signals.signalReference{i});
            end
        end
    end
    
    %tunnel--------------------------------------------------------------------
    if isfield(signals,'tunnel')
        if size(signals.tunnel,2)==1
            obj.tunnel{1} = ODR.roadPKG.signalsPKG.tunnel();
            obj.tunnel{1} = obj.tunnel{1}.tunnelXML(signals.tunnel);
        else
            for i=1:size(signals.tunnel,2)
                obj.tunnel{i} = ODR.roadPKG.signalsPKG.tunnel();
                obj.tunnel{i} = obj.tunnel{i}.tunnelXML(signals.tunnel{i});
            end
        end
    end
    
    %bridge--------------------------------------------------------------------
    if isfield(signals,'bridge')
        if size(signals.bridge,2)==1
            obj.bridge{1} = ODR.roadPKG.signalsPKG.bridge();
            obj.bridge{1} = obj.bridge{1}.bridgeXML(signals.bridge);
        else
            for i=1:size(signals.bridge,2)
                obj.bridge{i} = ODR.roadPKG.signalsPKG.bridge();
                obj.bridge{i} = obj.bridge{i}.bridgeXML(signals.bridge{i});
            end
        end
    end
end
