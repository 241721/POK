clear all;
close all;

%zadana funckja
syms x x2 
% y =@(x) x+log10(x)-(sin(x))^2;
% y2 = @(x2) x2+log10(x2)-(sin(x2))^2;
y=@(x)x^2+log10(x)-sin(x);
y2=@(x) x2^2+log10(x2)-sin(x2);


%deklaracja przedzia³u 
a=input('Podaj poczatek przedzialu: ');
b=input('Podaj koniec przedzialu: ');

%dziedzina logarytmu
if   a<0 || b<0
    fprintf('Liczba nie nalezy do dziedziny logarytmu.')
    return
end

%warunek isteniania mejsca zerowego
if y(a)*y(b)>0
    fprintf('Brak pierwiastka dla podanego przedzialu.')
    return
end

%pierwsza i druga pochodna funkcji
df=diff(y(x));
ddf=diff(y(x),2);

%okreslenie precyzji
tol=1.0E-6;

%oczekiwane wyjscie
iter=0;
poprz=0;
wartosc=0;

%sprawdzanie znaku pochodnych
if sign(subs(df))==sign(subs(ddf))
   x=a;  
else
   x=b;
end
 
%algorytm reguly falsi
for i=0:100
    if abs(poprz-x)>tol && x>0
    if x==a
    x2=b;
    poprz=double(x);
    x=poprz;
    x=poprz-subs(y)*(b-poprz)/(subs(y2)-subs(y));
    else
    x2=a;
    poprz=double(x);
    x=poprz;
    x=poprz-subs(y)*(a-poprz)/(subs(y2)-subs(y));
    end 
    
    else
        iter=i;
        break
    end
    %iteracja
    disp("iteracja " + i+1)
    %wypisanie pierwiastka
    disp("x=")
    disp(double(x))
    %wypisanie wartosci funkcji w miesjcu zerowym
    wartosc=double(subs(y));
    disp("y=")
    disp(wartosc)
end

    








