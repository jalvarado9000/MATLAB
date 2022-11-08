function matlab_fzero
clc;
func = input('enter the function ');
xguess = input('enter the root guess');

f = fzero(func,xguess)

end

