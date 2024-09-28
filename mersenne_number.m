% A Mersenne number is a number of the form ...
% M(n)= 2^n - 1 where n is an integer.
clc;clear;
n= linspace(1,10,10) ;
mersenne_num = 2.^n - 1 ;
t1 = table(n',mersenne_num','VariableNames',{'n','Mersenne number'}) ;
disp(t1)
