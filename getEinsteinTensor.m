function einsteinTensor = getEinsteinTensor(metricTensor)
syms x0 x1 x2 x3;
syms a G M r c PI;
coordinateSet = [x0 x1 x2 x3];
einsteinTensor = sym(zeros(4,4));
ricciCurvatureScalar = getRicciCurvatureScalar(metricTensor);
ricciCurvatureTensor = getRicciCurvatureTensor(metricTensor);
for m=1:length(coordinateSet)
    for n=1:length(coordinateSet)
        einsteinTensorComponent = ricciCurvatureTensor(m,n)-(ricciCurvatureScalar/2)*metricTensor(m,n); 
        einsteinTensor(m,n) = einsteinTensorComponent;
    end
end

