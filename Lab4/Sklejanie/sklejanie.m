range = [-.5,.5];
nodes = 9;
x = linspace(range(1),range(2),nodes);
y = -abs(x);
k = splineCurv(x,y);
xx = linspace(range(1),range(2),101);
for i = 1:101
yy(i) = splineEval(x,y,k,xx(i));
end

hold on;

plot(xx,yy,'--');
plot(x,y);
legend('interpolacja funkcjami sklejanymi','funkcja interpolowana');