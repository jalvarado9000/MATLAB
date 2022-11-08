function fixed_point
clc;
g = input('enter g(x) = ');
x0 = input('enter x0 = ');
esp = input('allowable tolerence esp = ');
iter = input('number of itterations = ');

i = 1;

while(i<iter)
    x1 = feval(g,x0);
    
    ea(i) = abs(((x1-x0)/(x1)*100));
    
        x0 = x1;
        i = i+1;
   
end
ea(1:iter-1)

end

        

