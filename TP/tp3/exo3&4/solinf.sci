function [x] = solinf(L, b)
    //résoudre le système linéaire triangulaire inférieur Lx=b
    //vérifier les paramètres 
    [Lm,Ln] = size(L)
    [bm,bn] = size(b)
    
    if (bn ~= 1 | Lm ~= bm | Lm ~= Ln)
        error("ERREUR PARAMETRE");
    end
    
    x = zeros(Ln,1)
    tol = 2*10^(-16)
    
    for i = 1 : Lm
        if(abs(L(i,i)) < tol)
            error("Matrice non inversible")
        end
        S = 0 
        for j = 1 : i-1
            S = S + L(i,j)*x(j)
        end
        x(i) = (b(i) - S)/L(i,i)
    end
endfunction
