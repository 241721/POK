A=[3 1 2; 1 8 1; 2 1 1];
x=[1;1;1];
format short
m=1000;
tol = 0.01;
i=1;
for i=1:m
    y = A*x;
    x = y/y(1);
    if abs(min(x))<tol
        break;
    end
end
x=x/x(end);
disp(x)
disp(i)
disp(max(y))
disp("KONIEC")


