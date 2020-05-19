n = 10000000; %ilosc problek
counter = 0;    %zmienna do zliczania ile probek znajduje sie pod funkcja
for i=1:n
    rPoint = [rand * 3 + 2, rand*30];   %losowy punkt z przedziału y (0, 30) oraz x = 2 5
    
    if rPoint(2) <= rPoint(1)^2+3 %jesli wartosc punktu mniejsza od wartosci funkcji
        counter = counter + 1;      %zwieksz licznik probek o 1
    end
    
end

calka = (counter/n)*(3*30);
disp("Całka wynosi: " + calka);