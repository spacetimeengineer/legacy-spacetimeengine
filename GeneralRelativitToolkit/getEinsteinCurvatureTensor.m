function einsteinCurvatureTensor = getEinsteinCurvatureTensor(metricTensor)
syms x0 x1 x2 x3;
syms a G M r c PI;
coordinateSet = [x0 x1 x2 x3];
einsteinCurvatureTensor = sym(zeros(4,4));
ricciCurvatureScalar = getRicciCurvatureScalar(metricTensor);
ricciCurvatureTensor = getRicciCurvatureTensor(metricTensor);
for m=1:length(coordinateSet)
    for n=1:length(coordinateSet)
        einsteinCurvatureTensorComponent = ricciCurvatureTensor(m,n)-(ricciCurvatureScalar/2)*metricTensor(m,n); 
        einsteinCurvatureTensor(m,n) = einsteinCurvatureTensorComponent;
    end
end

