function metricTensor = getMinkowskiMetricTensor()
syms x0 x1 x2 x3 c;
metricTensor =  [-c^2 0 0 0 ; 0 1 0 0 ; 0 0 1 0 ; 0 0 0 1];