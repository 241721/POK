function y = splineEval(xData,yData,k,x)
i = findSeg(xData,x);
h = xData(i) - xData(i+1);
y = ((x - xData(i+1))^3/h - (x - xData(i+1))*h)*k(i)/6.0 - ((x - xData(i))^3/h - (x - xData(i))*h)*k(i+1)/6.0 + yData(i)*(x - xData(i+1))/h - yData(i+1)*(x - xData(i))/h;
end