function metricTensor = getSphereMetricTensor()
syms x0 x1 x2 x3;
metricTensor =  [1 0 0 0 ; 0 x0^2 0 0 ; 0 0 x0^2*sin(x1)*2 0 ; 0 0 0 0];