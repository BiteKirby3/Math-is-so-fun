function [x] = resolG(A,b)
    [U,e] = trisup(A,b)
    x = solsup(U,e)
endfunction
