function [B] = inverse(A)
    [m,n] = size(A)
    if (m ~= n)
        error("MATRICE NON CARREE !");
    end
    
    I = eye(n,n)
    B = zeros(n,n)
    
    for i=1 : n
        B(:,i)=resolLU(A,I(:,i))
    end
endfunction
