function mullerquick
clc;
f = input('enter the function = ');
x1 = input('enter lower bound x1 = ');
x2 = input('enter upper bound x2 = ');
x3 = input('enter upper bound x3 = ');



k = 1;
while abs(x2-x3) > eps*abs(x3)
    y1 = f(x1);
    y2 = f(x2);
    y3 = f(x3);
    c1 = (y1-y2)/(x1-x2);
    c2 = (y2-y3)/(x2-x3);
    d1 = (c1-c2)/(x1-x3);
    s = d1*(x3-x2)+c2;
    w = 2*y3/(s+sign(s)*sqrt(s^2-4*d1*y3))+x3;
    if sign(imag(w)) == +1
        s = '+';
    else
        s = '-';
    end
    fprintf(['x(' num2str(k) ') = %16.14f %1s %16.14fi\n'],real(w),s,abs(imag(w)))
    x1 = x2;
    x2 = x3;
    x3 = w;
    k = k + 1;
end


