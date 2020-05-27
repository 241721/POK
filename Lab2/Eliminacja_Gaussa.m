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
b = str2num(answer{1}); %Wektor danych

U = A;
s = size(A);

for i=1:s(1)
    U(i,s(2)+1)=b(i);
end

%x = A\b mo¿e rozwi¹zanie w jednej linijce, poniewa¿ matlab do znalezenia
%wyniku tego wyra¿enia u¿ywa metody eliminacji gaussa


%U = [2 1 1 -1 3;1 1 -1 1 4; 1 1 1 1 10; -1 2 -1 1 4]; %Macierz wspó³czynników | wektor danych
%A = U(:,1:end-1); 
U_size = size(U);
n = U_size(2)-1;
m = U_size(1);
r = rank(A);

if rank(U) == rank(A)
    if r == n
        epsi = 1e-12;
        r = false;
        for i=1:n-1
            for j=i+1:n
                if abs(U(i,i)) < epsi
                    break;
                else
                    m=-(U(j,i)/U(i,i));
                    for k=i+1:n+1
                        U(j,k) =U(j,k)+ m*U(i,k);
                    end
                end
            end
        end
        for i=n:-1:1
            s = U(i,n+1);
            for j = n:-1:i+1
                s = s-U(i,j)*X(j);
            end
            if abs(U(i,i))<epsi
                break;
            end
            X(i)=s/U(i,i);
            r = true;
        end
        if r==true
            disp("Rozwiazanie uk³adu: ");
            s = size(X);
            for i=1:s(2)
                fprintf("x%i = %8.3f\n",i,X(i));
            end
        else
            disp("Uk³ad ma rozwi¹zanie ale nie uda³o siê go znaleŸæ :C");
        end
    elseif r < n
        disp("Uklad ma nieskoñczenie wiele rozwi¹zañ");
    end
else
    disp("Uklad sprzeczny, nie ma rozwiazañ");
end