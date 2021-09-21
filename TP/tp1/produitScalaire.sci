function [ps] = produitScalaire (A, l, c)
    //cette fonction calcule le produit scalaire entre la lième ligne et la cième colonne de A 
    [n, m] = size(A)
    if (n~=m | l<1 | l>n | c<1 | c>n)
        error("erreur dans fact : l""argument incorrect");
    end
    
    A_i = A(l, :)
    Ac = A(:, c)
    ps = A_i * Ac
endfunction

