function main
    exec('solinf.sci', -1)
    exec('solsup.sci', -1)
    exec('cholesky.sci', -1)
    exec('resolchol.sci', -1)
    exec('place.sci', -1)
    exec('calcg.sci', -1)
    exec('tracebis.sci', -1)
    exec('cald.sci', -1)
    exec('calcoef.sci', -1)
    //Exo3
    T=[1;3;4.5;5;6]
    cc1 = [1 0 1 0 ; 5 0 -8/9 0 ; 3 0 16 0 ; 7 0 -8 0]
    tracebis(200,T,cc1)
    //Exo4
    y=[1;5;3;7;-1]
    cc2=calcoef(T,y)
    scf(1)//nouvelle fenetre
    tracebis(200,T,cc2)
endfunction
