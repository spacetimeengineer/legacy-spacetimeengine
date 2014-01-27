function ricciCurvatureTensor = getRicciCurvatureTensor(metricTensor)
syms x0 x1 x2 x3;
syms a G M r c t th ph ;
riemannCurvatureTensor = getRiemannCurvatureTensor(metricTensor);
coordinateSet = [x0 x1 x2 x3];
ricciCurvatureTensor = sym(zeros(4,4));
for m=1:length(coordinateSet)
    for n=1:length(coordinateSet)
        ricciCurvatureTensorComponent = 0;
        for g=1:length(coordinateSet)
             ricciCurvatureTensorComponent =  ricciCurvatureTensorComponent + riemannCurvatureTensor(n,g,m,g);
        end
    	ricciCurvatureTensor(m,n) = ricciCurvatureTensorComponent;
    end
end
ricciCurvatureTensor = simplify(ricciCurvatureTensor);

