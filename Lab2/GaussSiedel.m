clear all;
clc;
close all; 
 
 epsi = 10^(-3);
 m = input('Wpisz liczbe iteracji:  ');
 A=[2 1 1 -1 3; 1 1 -1 1 4; 1 1 1 1 10; -1 2 -1 1 4];
 s=size(A);
 n=s(1);
 x0 = zeros(n,1);
 
 k = 1;
 while  k < m
    err = 0;
    for i = 1 : n 
       s = 0;
       for j = 1 : n 
          s = s-A(i,j)*x0(j);
       end
       s = (s+A(i,n+1))/A(i,i);
       if abs(s) > err 
         err  = abs(s);
       end
       x0(i) = x0(i) + s;
    end

    if err <= epsi 
      break;
    else
      k = k+1;
    end
 end 
 
 fprintf('Rozwi¹zanie po %d iteracji:\n', k);
 for i = 1 : n 
   fprintf(' %11.8f \n', x0(i));
 end