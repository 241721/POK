clear all;
clc;
U = [2 1 1 -1 3;1 1 -1 1 4; 1 1 1 1 10; -1 2 -1 1 4];
A = U(:,1:end-1);
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