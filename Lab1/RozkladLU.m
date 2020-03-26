clear all;
clc;
prompt = {'Separator rzêdów (;):'};
dlgtitle = 'Wprowadz macierz wspolczynnikow A';
answer = inputdlg(prompt,dlgtitle, [1 75]);
answer = strcat('[',answer,']');
A = str2num(answer{1}) %Macierz wspó³czynników
prompt = {'Separator rzêdów (;):'};
dlgtitle = 'Wprowadz wektor danych b';
answer = inputdlg(prompt,dlgtitle, [1 75]);
answer = strcat('[',answer,']');
y = str2num(answer{1}); %Wektor danych

A  = [2 1 1 -1;1 1 -1 1; 1 1 1 1; -1 2 -1 1]; %Macierz wspólczynnikow
y = [3;4;10;4]; %Wektor danych

[L,U]=lu(A);
x = L*U\y;
disp("Rozwi¹zanie uk³adu: ");
for i=1:size(x)
    fprintf("x%i = %8.3f\n",i,x(i));
end

