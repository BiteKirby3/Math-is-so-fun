function [i] = place(T,t) 
    [n,m] = size(T)
    if t<T(1,1)|t>T(n,1)  then
        error("t < T1 ou t > Tn");
    end
    imin = 1
    imax = n
    while (imax-imin)>1 
        mil = floor((imax+imin)/2)
        if t>=T(mil,1)
            imin = mil
        else
            imax = mil
        end
    end
    i = imin
endfunction
