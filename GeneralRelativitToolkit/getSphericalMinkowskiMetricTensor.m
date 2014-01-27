function metricTensor = getSphericalMinkowskiMetricTensor()
syms x0 x1 x2 x3 c;
metricTensor =  [-c^2 0 0 0 ; 0 1 0 0 ; 0 0 x1^2 0 ; 0 0 0 x1^2*sin(x2)^2];