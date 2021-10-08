function [i] = place(T,t) 
    [m,n] = size(T)
    if t<T(1,1)|t>T(1,n)  then
        error("t < T1 ou t > Tn");
    end
    imin = 1
    imax = n
    while (imax-imin)>1 
        mil = floor((imax+imin)/2)
        if t>=T(1,mil)
            imin = mil
        else
            imax = mil
        end
    end
    i = imin
endfunction
