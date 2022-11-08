%esto funciona para bisection and false position
fm = @(m)sqrt(9.81*m/0.25)*tanh(sqrt(9.81*0.25/m)*4)-36;
%esto es para newton rhapson
unc = @(x) x^5-11*x^4+46*x^3+90*x^2+81*x-27;
dunc = @(x) 5*x^4-44*x^3+138*x^2-180*x+81;
%para fixed point
fp = @(x)  (exp(1)^-x)- x;
%fzero
fzero(@(x) x^2 - 9,-4);

unc = @(x) -x+ 2.71^-x
dunc = @(x) -1 - 2.71^-x


%prob 3
@(x) 1.25-((1/(4*pi*0.0000000000089))*0.00002^2*x./(x.^2 + 0.85^2)^1.5)
@(f,Re)4*log10(Re*sqrt(f))-0.4-1/sqrt(f)
0.0028,0.012,2500)
 