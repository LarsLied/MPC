function [y] = measurementFunctionFourTank(x,p)
%MEASUREMENTFUNCTIONFOURTANK Summary of this function goes here
%  Mesurement of height given mass in tanks. 
rho = p(12,1);
A = p(5:8,1); 
m = x;

y = m./(rho*A);
end

