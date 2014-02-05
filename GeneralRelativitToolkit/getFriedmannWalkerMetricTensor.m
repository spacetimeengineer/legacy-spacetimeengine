function metricTensor = getFriedmannWalkerMetricTensor()
syms x0 x1 x2 x3 k a t;
a = sym('a(x0)');
metricTensor =  [-1 0 0 0 ; 0 a^2/(1-k*x1^2) 0 0 ; 0 0 a^2*x1^2 0 ; 0 0 0 a^2*x1^2*sin(x2)^2];