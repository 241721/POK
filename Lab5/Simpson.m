clear all;
clc;
close all;
f=@(x)x^2+3; %zdefiniowana funkcja
a=2; %dolny przedzia� ca�ki
b=5; %g�rny przedzia� ca�ki
n = input('Wpisz liczbe podprzedzia��w, n: '); %nasz przedzia� dzielimy na liczb� n podprzedzia��w
if mod(n,2) == 1 %p�tla sprawiaj�ca, �e ka�da liczba b�dzie parzysta, poniewa� tylko dla takich dzia�a metoda Simpsona
   n=n+1;
end
h = (b-a)/n; %d�ugo�� ka�dego podprzedzia�u
s=f(a)+f(b); %rozpisanie wzoru sumacyjnego dla metody Simpsona 

for i=1:2:n-1
    s=s+4*f(a+i*h);
end
for i=2:2:n-2
    s=s+2*f(a+i*h);
end
I=(h/3)*s %ostatni krok w naszym wzorze i podanie wyniku