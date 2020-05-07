function [c,d,e] = LUdec3(c,d,e)
% Dekompozucja na macierz LU macierzy trojdiagonalnej A = [c\d\e]
n = length(d);
for k = 2:n
    lambda = c(k-1)/d(k-1);
    d(k) = d(k) - lambda * e(k-1);
    c(k-1) = lambda;
end
end