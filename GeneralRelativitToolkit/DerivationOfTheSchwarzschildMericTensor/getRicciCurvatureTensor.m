function ricciCurvatureTensor = getRicciCurvatureTensor(metricTensor)
syms G M r c PI;
syms r th ph t;
coordinateSet = [r th ph t];
christoffelSymbolsOfTheSecondKind = getChristoffelSymbolsOfTheSecondKind(metricTensor);
ricciCurvatureTensor = sym(zeros(4,4));
for i=1:length(coordinateSet)
    for j=1:length(coordinateSet)
        ricciCurvatureTensorComponent = 0;
        for l=1:length(coordinateSet)
            for m=1:length(coordinateSet)
                ricciCurvatureTensorComponent = ricciCurvatureTensorComponent + diff(christoffelSymbolsOfTheSecondKind(j,i,l),coordinateSet(l)) - diff(christoffelSymbolsOfTheSecondKind(l,i,l),coordinateSet(j)) + christoffelSymbolsOfTheSecondKind(j,i,l)*christoffelSymbolsOfTheSecondKind(m,l,m) - christoffelSymbolsOfTheSecondKind(l,i,m)*christoffelSymbolsOfTheSecondKind(m,j,l);
            end
        end
        ricciCurvatureTensor(i,j) = ricciCurvatureTensorComponent;
    end
end
ricciCurvatureTensor = simplify(ricciCurvatureTensor);

    
    
    
    
    