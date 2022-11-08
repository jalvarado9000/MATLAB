function root = bisection1
clc;
func = input('enter the function = ');
 x1 = input('enter lower bound x1 = ');
xu = input('enter upper bound xu = ');
es = input('allowable tolerence es = ');
maxit = input('maximum number of iteration maxit =');
 
 
 
if func(x1)*func(xu) > 0
disp('no bracket')
return 
end

if nargin <5 , maxit = 50; end
if nargin <4, es = 0.001; end

iter = 0;
xr = x1;
while(1)
xrold = xr
xr = (x1 + xu)/2
iter = iter + 15
if xr ~= 0 ea = abs((xr-xrold)/xr)*100; end
test = func (x1) * func(xr)
if test < 0
xu = xr
disp('hey')
elseif test > 0
xl = xr
disp('he2')
else 
disp('he1')
ea = 0;
disp('he')
end
if ea <= es | iter >= maxit, break, end
end 
root = xr;
