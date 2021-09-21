function [x] = suite (N,a,b)
    if (N<=0)
        error("erreur dans fact : N doit etre positive");
    end
    x=zeros(1,N)
    
    if (N>=1) then
        x(1,1)=a;
    end
    
    if (N>=2) then
        x(1,2)=b;
    end
    
    for i = 1 : N-2 
        x(1,i+2)=9/4 * x(1,i+1) -1/2 * x(1,i);
    end
endfunction
