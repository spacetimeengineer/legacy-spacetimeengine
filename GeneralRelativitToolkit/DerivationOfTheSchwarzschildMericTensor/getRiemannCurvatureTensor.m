function riemannCurvatureTensor = getRiemannCurvatureTensor(metricTensor)
syms G M r c PI;
syms r th ph t;
A = sym('A(r)');
B = sym('B(r)');
coordinateSet = [r th ph t];
christoffelSymbolsOfTheSecondKind = getChristoffelSymbolsOfTheSecondKind(metricTensor);
riemannCurvatureTensor = sym(zeros(4,4,4,4));
for a=1:length(coordinateSet)
    for b=1:length(coordinateSet)
        for g=1:length(coordinateSet)
            for d=1:length(coordinateSet)
                riemannCurvatureTensorComponent = 0;
                for u=1:length(coordinateSet)
                    riemannCurvatureTensorComponent = riemannCurvatureTensorComponent + diff(christoffelSymbolsOfTheSecondKind(d,b,a),coordinateSet(g)) - diff(christoffelSymbolsOfTheSecondKind(g,b,a),coordinateSet(d)) + christoffelSymbolsOfTheSecondKind(d,b,u)*christoffelSymbolsOfTheSecondKind(g,u,a) - christoffelSymbolsOfTheSecondKind(g,b,u)*christoffelSymbolsOfTheSecondKind(d,u,a);
                end
                riemannCurvatureTensor(d,g,b,a) = riemannCurvatureTensorComponent;
            end
        end
    end
end
riemannCurvatureTensor = simplify(riemannCurvatureTensor);

    
    