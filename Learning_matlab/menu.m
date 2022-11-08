function menu
x = 1;
while(x)
disp('Welcome to the root finding calculator')
disp('Pres:')
disp('1 for Bisection Method')
disp('2 for False Position Method')
disp('3 for Fixed Position Method')
disp('4 for Newton Method')
disp('5 for Secant Method')
disp('6 for Modified Secant Method')
disp('7 for Matlab fzero Method')
disp('8 for Muller Method')
disp('9 for Matlab root Method')
disp('10 for Bairstow Method')
disp('11 to Exit Program')




op = input(' ');

switch op
    case 1
        bisection2
    case 2
        false_position
    case 3
        fixed_point
    case 4
        new
    case 5
        secant_method
    case 6
         modSecant
    case 7
        matlab_fzero
    case 8
        muller
    case 9
        matlab_roots
    case 10
        bairstow1
    case 11
        x = 0;
        
        
end   
        
        
    
        
    



end

