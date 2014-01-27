function christoffelSymbolsOfTheSecondKind = getChristoffelSymbolsOfTheSecondKind(metricTensor)
    syms x0 x1 x2 x3 r th ph t
    syms G M r c;
    coordinateSet = [x0 x1 x2 x3];
    christoffelSymbolsOfTheSecondKind=sym(zeros(4,4,4));
    inverseMetricTensor=inv(metricTensor);
    for j=1:length(coordinateSet)
        for i=1:length(coordinateSet)
            for m=1:length(coordinateSet)
                christoffelSymbolsOfTheSecondKindComponent = 0;
                for k=1:length(coordinateSet)
                    christoffelSymbolsOfTheSecondKindComponent = christoffelSymbolsOfTheSecondKindComponent+1/2*inverseMetricTensor(k,m)*(diff(metricTensor(i,k),coordinateSet(j))+diff(metricTensor(j,k),coordinateSet(i))-diff(metricTensor(i,j),coordinateSet(k)));
                end
                christoffelSymbolsOfTheSecondKind(j,i,m)=christoffelSymbolsOfTheSecondKindComponent;
            end
        end
    end
    christoffelSymbolsOfTheSecondKind = simplify(christoffelSymbolsOfTheSecondKind);
    
    

    
    