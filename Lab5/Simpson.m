clear all;
clc;
close all;
f=@(x)x^2+3; %zdefiniowana funkcja
a=2; %dolny przedzia³ ca³ki
b=5; %górny przedzia³ ca³ki
n = input('Wpisz liczbe podprzedzia³ów, n: '); %nasz przedzia³ dzielimy na liczbê n podprzedzia³ów
if mod(n,2) == 1 %pêtla sprawiaj¹ca, ¿e ka¿da liczba bêdzie parzysta, poniewa¿ tylko dla takich dzia³a metoda Simpsona
   n=n+1;
end
h = (b-a)/n; %d³ugoœæ ka¿dego podprzedzia³u
s=f(a)+f(b); %rozpisanie wzoru sumacyjnego dla metody Simpsona 

for i=1:2:n-1
    s=s+4*f(a+i*h);
end
for i=2:2:n-2
    s=s+2*f(a+i*h);
end
I=(h/3)*s %ostatni krok w naszym wzorze i podanie wyniku