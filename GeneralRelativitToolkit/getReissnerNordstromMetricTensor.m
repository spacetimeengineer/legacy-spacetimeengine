function metricTensor = getReissnerNordstromMetricTensor()
syms x0 x1 x2 x3;
syms a b c d e f g h i j k l m n o p q r s t u v w x y z;
syms A B C D E F G H I J K L M N O P Q R S T U V W X Y Z PI e0;
metricTensor = [c^2*(1-(2*G*M)/(x1*c^2)+(Q^2*G*k)/(c^4)) 0 0 0 ; 0 1/(1-(2*G*M)/(x1*c^2)+(Q^2*G*k)/(c^4)) 0 0 ; 0 0 x1^2 0 ; 0 0 0 x1^2*sin(x2)^2];