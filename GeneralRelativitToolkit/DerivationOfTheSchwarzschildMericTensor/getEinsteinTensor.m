function einsteinTensor = getEinsteinTensor(metricTensor)
syms r th ph t
syms a G M r c PI;
coordinateSet = [r th ph t];
einsteinTensor = sym(zeros(4,4));
ricciCurvatureScalar = getRicciCurvatureScalar(metricTensor);
ricciCurvatureTensor = getRicciCurvatureTensor(metricTensor);
for m=1:length(coordinateSet)
    for n=1:length(coordinateSet)
        einsteinTensorComponent = ricciCurvatureTensor(m,n)-(ricciCurvatureScalar/2)*metricTensor(m,n); 
        einsteinTensor(m,n) = einsteinTensorComponent;
    end
end

