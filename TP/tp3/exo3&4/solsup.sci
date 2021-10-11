function [x] = solsup(U, b)
    //résoudre le système linéaire triangulaire supérieur Lx=b
    //vérifier les paramètres 
    [Um,Un] = size(U)
    [bm,bn] = size(b)
    
    if (bn ~= 1 | Um ~= bm | Um ~= Un)
        error("ERREUR PARAMETRE");
    end
    
    x = zeros(Un,1)
    tol = 2*10^(-16)
    
    for i = Um:-1:1
        if(abs(U(i,i)) < tol)
            error("Matrice non inversible")
        end
        S = 0 
        for j = i+1 : Um
            S = S + U(i,j)*x(j)
        end
        x(i) = (b(i) - S)/U(i,i)
    end
endfunction
