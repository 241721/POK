A  = [2 1 1 -1;1 1 -1 1; 1 1 1 1; -1 2 -1 1];
y = [3;4;10;4];
[L,U]=lu(A);
x = L*U\y;
disp("Rozwi¹zanie uk³adu: ");
for i=1:size(x)
    fprintf("x%i = %8.3f\n",i,x(i));
end

