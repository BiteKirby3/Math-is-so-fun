function [L,U]= LU(A)
    AA = A
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
            A(i,k)=0
            
            for j=k+1 : n
                A(i,j)=A(i,j)-c*A(k,j)
            end
        end
    end
    if(abs(A(n,n)) < tol)
        error("Matrice non inversible")
    end
    U=A
    L=AA*inv(U)
endfunction
