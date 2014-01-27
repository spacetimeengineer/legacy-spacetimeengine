function stressEnergyTensor = getStressEnergyTensor(metricTensor)
syms x0 x1 x2 x3;
syms a G M r c PI;
coordinateSet = [x0 x1 x2 x3];
stressEnergyTensor = sym(zeros(4,4));
ricciCurvatureScalar = getRicciCurvatureScalar(metricTensor);
ricciCurvatureTensor = getRicciCurvatureTensor(metricTensor);
for m=1:length(coordinateSet)
    for n=1:length(coordinateSet)
        stressEnergyComponent = ricciCurvatureTensor(m,n)-(ricciCurvatureScalar/2)*metricTensor(m,n)*(8*PI*G)^(-1)*c^4;  
        stressEnergyTensor(m,n) = stressEnergyComponent;
    end
end

