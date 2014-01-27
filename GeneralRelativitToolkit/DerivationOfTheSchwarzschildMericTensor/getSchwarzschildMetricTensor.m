function metricTensor = getSchwarzschildMetricTensor()
syms G M c r R th ph;
A = sym('A(r)');
B = sym('B(r)');
metricTensor = [A 0 0 0 ; 0 r^2 0 0 ; 0 0 r^2*sin(th)^2 0 ; 0 0 0 B];