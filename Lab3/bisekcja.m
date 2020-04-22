clear all;
clc;
close all;
y = @(x) x+log10(x)-sin(x)^2;       %Funkcje podane przez prowadz�cego
tol = 1.0E-6
%y = @(x) x^2+log10(x)-sin(x);
x1 = input('Prosz� poda� warto�� x1: ');    %Podanie przedzia��w dla kt�rych chcemy zbada� funkcje
x2 = input('Prosz� poda� warto�� x2: ');
if y(x1)*y(x2) > 0                          %Warunek dla naszego algorytmu
  fprintf('Brak pierwiastk�w wewn�trz podanego przedzia�u\n');
  return
end

if y(x1) == 0                           %Sprawdzenie warto�ci x1 i x2 s� naszymi pierwiastkami 
  fprintf('x1 jest jednym z pierwiastk�w\n')
  return
elseif y(x2) == 0
  fprintf('x2 jest jednym z pierwiastk�w\n')
  return
end

for i = 1: 100          %Liczba iteracji
  xh = (x1+x2)/2;       %Algorytm bisekcji
  if y(x1)*y(xh) < 0
    x2 = xh;
  else
    x1 = xh;
  end
  if abs(y(x1)) < tol
    break
  end
end
fprintf('Szukany pierwiastek: %f\nLiczba iteracji: %d\n',x1,i) %Rozwi�zanie