function [x] = solinf(L, b)
    //résoudre le système linéaire triangulaire inférieur Lx=b
    //vérifier les paramètres 
    [Lm,Ln] = size(L)
    [bm,bn] = size(b)
    
    if (bn ~= 1 | Lm ~= bm | Lm ~= Ln)
        error("ERREUR PARAMETRE");
    end
    
    x = zeros(Ln,1)
    
    for i = 1 : Lm
        S = 0 
        for j = 1 : i-1
            S = S + L(i,j)*x(j)
        end
        if(L(i,i) == 0)
            error("L"+i+i+" = 0")
        else
            x(i) = (b(i) - S)/L(i,i)
        end
    end
endfunction
