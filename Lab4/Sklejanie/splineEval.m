function y = splineEval(xData,yData,k,x)
% Zwraca wartosc funkcji interpolujacej w x
% dane wejsciowe: xData - wspolrzedne x wezlow,
% yData - wspolrzedne y wezlow,
% dane wyjsciowe: k - wartosci drugich pochodnych w wezlach.
i = findSeg(xData,x);
h = xData(i) - xData(i+1);
y = ((x - xData(i+1))^3/h - (x - xData(i+1))*h)*k(i)/6.0 - ((x - xData(i))^3/h - (x - xData(i))*h)*k(i+1)/6.0 + yData(i)*(x - xData(i+1))/h - yData(i+1)*(x - xData(i))/h;
end