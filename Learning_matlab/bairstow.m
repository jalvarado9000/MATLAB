function r = bairstow(p,eps,N)
%
%  Computes all roots of the polynomial p with Bairstow's method.
%  On entry :
%    p        coefficient vector of a polynomial;
%    eps      accuracy requirement on the quadratic factors;
%    N        maximal number of iterations to compute one factor.
%  On return :
%    r        approximations for all the roots of p.
%
n = size(p,2);
q = p;
r = zeros(1,n-1);
for i = 1:floor(n/2)
   if (size(q,2) <= 3)
      f = q;
      q = 0;
   else
      [q,f] = bairstow1(q,eps,N);
   end
   if size(f,2) == 2
      r(2*i-1) = -f(2)/f(1);
   else
      disc = f(2)^2 - 4*f(1)*f(3);
      r(2*i-1) = (-f(2) - sqrt(disc))/(2*f(1));
      r(2*i)   = (-f(2) + sqrt(disc))/(2*f(1));
   end;
end;
r = r';