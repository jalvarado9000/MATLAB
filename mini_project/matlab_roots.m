function matlab_roots
clc;
disp('Example 7x^2 + 8x +1');
disp('has 3 terms and is writtern form highest to lowest');
n = input('Enter how many terms does the function have');

for i = 1:n
    a(i) = input('Enter the function terms form highest to lowest');
end

result = roots(a)

end

