function metricTensor = getSchwarzschildMetricTensor()
syms x0 x1 x2 x3 G M c A B r R th ph;
metricTensor = [-c^2*(1-2*G*M/(x1*c^2)) 0 0 0 ; 0 1/(1-2*G*M/(x1*c^2)) 0 0 ; 0 0 x1^2 0 ; 0 0 0 x1^2*sin(x2)^2];