function riemannCurvatureTensor = getRiemannCurvatureTensor(metricTensor)
syms x0 x1 x2 x3;
syms a G M r c t th ph ;
christoffelSymbolsOfTheSecondKind = getChristoffelSymbolsOfTheSecondKind(metricTensor);
coordinateSet = [x0 x1 x2 x3];
riemannCurvatureTensor = sym(zeros(4,4,4,4));
for a=1:length(coordinateSet)
    for b=1:length(coordinateSet)
        for g=1:length(coordinateSet)
            for d=1:length(coordinateSet) 
                riemannCurvatureTensorComponent = diff(christoffelSymbolsOfTheSecondKind(d,b,a),coordinateSet(g)) - diff(christoffelSymbolsOfTheSecondKind(g,b,a),coordinateSet(d));
                for u=1:length(coordinateSet)
                    riemannCurvatureTensorComponent = riemannCurvatureTensorComponent + christoffelSymbolsOfTheSecondKind(d,b,u)*christoffelSymbolsOfTheSecondKind(g,u,a) - christoffelSymbolsOfTheSecondKind(g,b,u)*christoffelSymbolsOfTheSecondKind(d,u,a);
                end
                riemannCurvatureTensor(d,g,b,a) = riemannCurvatureTensorComponent;
            end
        end
    end
end
riemannCurvatureTensor = simplify(riemannCurvatureTensor);

    
    