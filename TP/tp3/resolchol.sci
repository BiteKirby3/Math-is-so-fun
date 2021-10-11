function [x] = resolchol(A,b)
    C = cholesky(A) //A=C*C' => C*C'*x=b 
    y = solinf(C, b)
    x = solsup(C', y)
endfunction
