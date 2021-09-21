function [f] = fact (n)
    //cette fonction calcule la factorielle d'un nombre entier
    
    if (n-floor(n)~= 0 | n<0)
        error("erreur dans fact : l""argument doit etre entier");
    end
    
    if n==0
        f=1;
    else
        f = prod(1:n) 
    end
endfunction
