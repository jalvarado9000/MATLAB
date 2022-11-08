function [x,y] = false_position
clc;
func = input('enter the function');
x1 = input('enter lower bound x1 = ');
xu = input('enter upper bound xu = ');
es = input('allowable tolerence es = ');
maxit = input('maximum number of iteration maxit =');

a(1) = x1; b(1) = xu;
ya(1) = feval(func, a(1)); yb(1) = feval(func,b(1));
if ya(1) * yb(1) > 0.0
    disp('Function has same sign at end points')
end 
for i = 1:(maxit)
    x(i) = b(i)-yb(i)*(b(i)-a(i))/(yb(i)-ya(i));
    y(i) = feval(func,x(i));
    if y(i) == 0.0
        disp('exact zero found');break;
    elseif y(i) * ya(i) < 0
        a(i+1) = a(i); ya(i+1) = ya(i);
        b(i+1) = x(i); yb(i+1) = y(i);
        
    else
        a(i+1) = x(i); ya(i+1) = y(i);
        b(i+1) = b(i); yb(i+1) = yb(i);
    end
    if((i > 1) && (abs(x(i) - x(i-1)) < es))
        disp('False position method has converged');break;
    end
    iter = i;
    
    
end
if(iter>=maxit)
    disp('zero not found to desired tolerance');
end
n = length(x); k = 1:n; out = [k' a(1:n)' b(1:n)' x' y'];
disp('      step        x1      xu      xr      f(xr)')
disp(out)

