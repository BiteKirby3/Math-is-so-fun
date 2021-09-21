function [x] = racine2 (p)
    //Algorithme stable
    if (p<1)
        error("Il n""y a pas de solution dans R ");
    end
    
    x=zeros(1,2)
    x(1,1)=p+sqrt(p*p-1);
    x(1,2)=1/(p+sqrt(p*p-1));
    
    
endfunction
