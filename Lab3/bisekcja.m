clear all;
clc;
close all;
y = @(x) x+log10(x)-sin(x)^2;       %Funkcje podane przez prowadz¹cego
tol = 1.0E-6
%y = @(x) x^2+log10(x)-sin(x);
x1 = input('Proszê podaæ wartoœæ x1: ');    %Podanie przedzia³ów dla których chcemy zbadaæ funkcje
x2 = input('Proszê podaæ wartoœæ x2: ');
if y(x1)*y(x2) > 0                          %Warunek dla naszego algorytmu
  fprintf('Brak pierwiastków wewn¹trz podanego przedzia³u\n');
  return
end

if y(x1) == 0                           %Sprawdzenie wartoœci x1 i x2 s¹ naszymi pierwiastkami 
  fprintf('x1 jest jednym z pierwiastków\n')
  return
elseif y(x2) == 0
  fprintf('x2 jest jednym z pierwiastków\n')
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
fprintf('Szukany pierwiastek: %f\nLiczba iteracji: %d\n',x1,i) %Rozwi¹zanie