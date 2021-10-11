function [C] = cholesky(A)
    [n,n] = size(A)
    C = zeros(n,n)
    for j = 1:n
        s = A(j,j)-sum(C(j,1:j-1)^2)
        if(s<=0) then
            error("Matrice non définie positive");
        end
        C(j,j)=sqrt(s)
        for i = j+1 : n
            C(i,j)=1/C(j,j)*(A(i,j)-sum(C(i,1:j-1).*C(j,1:j-1)))
        end
    end
    s = A(n,n)-sum(C(n,1:n-1)^2)
    if(s<=0) then
            error("Matrice non définie positive");
    end
    C(n,n)=sqrt(s)
endfunction
    
