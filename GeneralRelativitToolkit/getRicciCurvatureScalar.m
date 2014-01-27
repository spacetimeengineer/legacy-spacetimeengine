function ricciCurvatureScalar = getRicciCurvatureScalar(metricTensor)
    syms x0 x1 x2 x3;
    syms G M r c;
    coordinateSet = [x0 x1 x2 x3];
    inverseMetricTensor = inv(metricTensor);
    ricciCurvatureTensor = getRicciCurvatureTensor(metricTensor);
    ricciCurvatureScalar = 0;
    for a=1:length(coordinateSet)  
        for b=1:length(coordinateSet)
            ricciCurvatureScalar = ricciCurvatureScalar+inverseMetricTensor(a,b)*ricciCurvatureTensor(a,b);
        end
    end
    ricciCurvatureScalar = simplify(ricciCurvatureScalar);
    