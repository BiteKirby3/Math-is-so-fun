function [x]=resolLU(A,b)
    [L,U] = LU(A)
    y = solinf(L,b)
    x = solsup(U,y)
endfunction
