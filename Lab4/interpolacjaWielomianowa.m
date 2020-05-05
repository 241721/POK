clear all;
close all;
clc;
x = [10 20 30 40 50];
y = [0.98 0.93 0.86 0.76 0.64];
n = length(x)-1;

xp=21;

suma=0;
for i=1:n+1
    pr=1;
    for j=1:n+1
        if j~=i
            pr=pr*(xp-x(j))/(x(i)-x(j));
        end
    end
    suma=suma+y(i)*pr;
end
yp=suma

        