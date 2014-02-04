function metricTensor = getExpandingHypersphereMetricTensor()
syms x0 x1 x2 x3 c;
metricTensor =  [-c^2 0 0 0 ; 0 c^2*x0^2 0 0 ; 0 0 c^2*x0^2*sin(x1)^2 0 ; 0 0 0 c^2*x0^2*sin(x1)^2*sin(x2)^2];