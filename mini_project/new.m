function new
clc;
func = input('enter the function');
dfunc = input('enter the derrivative of te function');
m = input('enter multiplicity of the root = ');
xguess = input('enter initial guess: xguess = ');
es = input('allowable tolerance: es = ');
maxit = input('maximun number of iteration: maxit = ');

iter = 1;
x(1) = xguess;
f(1) = feval(func, x(1));
dfdx(1) = feval(dfunc, x(1));
for i = 2: maxit
x(i) = x(i-1) - f(i-1) / dfdx(i-1);
f(i) = feval(func, x(i));
dfdx(i) = feval(dfunc, x(i)); 
if abs(x(i) - x(i-1)) < es
disp('Newton method has converged');break;
end 
iter = i;
end 
if (iter >= maxit)
disp('zero not found to desired tolerance');
end
n = length(x); k = 1:n;
disp('step	x')
out = [k; x;]
%fprintf('%5.0f %20.14 %21.15 %21.15\n',out)	




