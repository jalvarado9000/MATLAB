function [q,f] = bairstow1(p,eps,N)


p = input('enter the coefficient vector of polynomial = ');
eps = input('accuracy requirement on the coefficients = ');
N = input('maximal number of iterations = ');

n = size(p,2);
r = rand;
s = rand;
for i = 1:N
   d = [1 -r -s];                % divisor
   [q1,r1] = deconv(p,d);
   b0 = r1(n) + r*r1(n-1);
   b1 = r1(n-1);
   p2 = [q1 b1 b0];
   [q2,r2] = deconv(p2,d);
   c1 = r2(n-1);                 % define linear system
   c2 = q2(n-2);
   c3 = q2(n-3);
   a = [c2 c3; c1 c2];
   b = [-b1; -b0];
   drs = a\b;
   r = r + drs(1);
   s = s + drs(2);
   if (norm(drs) < eps)
      break;
   end;
end;
q = q1;
f = d;