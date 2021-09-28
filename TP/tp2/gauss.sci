function [A,b] = gauss (A,b) 
    //Algorithme d'élimination de GAUSS sans permutation de ligne
    [m,n] = size(A)
    if (m ~= n)
        error("MATRICE NON CARREE !");
    end
    
    tol = 2*10^(-16)
    for k = 1 : n-1
        if(abs(A(k,k)) < tol)
            error("Matrice non inversible")
        end
        for i=k+1 : n
            c = A(i,k)/A(k,k)
            b(i,1)=b(i,1) - c*b(k,1)
            A(i,k)=0
            
            for j=k+1 : n
                A(i,j)=A(i,j)-c*A(k,j)
            end
        end
    end
    if(abs(A(n,n)) < tol)
        error("Matrice non inversible")
    end
endfunction
