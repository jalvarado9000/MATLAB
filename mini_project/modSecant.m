function modSecant

func = input('enter the function = ');
xr = input('enter the xr value = ');
delta = input('enter the delta value = ');
es = input('allowable tolerence es = ');
maxit = input('maximum number of iteration maxit =');


if nargin<5, maxit = 50; end
if nargin<4, es = 0.001; end
if nargin<3, delta=1e-5;end

iter =0;

while(1)
    xrold = xr
    xr = xr-delta*xr*func(xr)/(func(xr+delta*xr)-func(xr))
    iter = iter +1
    if xr ~= 0, ea = abs((xr-xrold)/xr)*100; end
    if ea <=es | iter >= maxit, break,end
end

root = xr

end



