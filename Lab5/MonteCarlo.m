<<<<<<< HEAD
f=@(x)x^2+3; %dana wejściowa
przedzial = [2 5]; %przedział naszej całki
n = 10000000; %ilosc problek
=======
f=@(x)x^2+3;
przedzial = [2 5];
n = 1000000000; %ilosc problek
>>>>>>> 683a7d7fddb3f4ef5559be848b091d36c2139333
counter = 0;    %zmienna do zliczania ile probek znajduje sie pod funkcja
for i=1:n
    rPoint = [rand * (przedzial(2)-przedzial(1)) + przedzial(1), rand*30];   %losowy punkt z przedziału [y = (0, 30)] 
    
    if rPoint(2) <= f(rPoint(1)) %jesli wartosc punktu mniejsza od wartosci funkcji w danym punkcie
        counter = counter + 1;      %zwieksz licznik probek o 1
    end
    
end


calka = (counter/n)*(3*30);
disp("Całka wynosi: " + calka);