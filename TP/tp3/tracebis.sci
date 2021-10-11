function tracebis(N,T,cc) 
    [mT,nT] = size(T)
    [mcc,ncc] = size(cc)
    if(mT~=mcc+1 | ncc~=4 |nT~=1) then
        error("Taille non correcte");
    end 
    Gtj = zeros(1,N)
    ti = linspace(T(1,1),T(mT,1),N) // car T1 ≤ t ≤ Tn
    for j = 1 : N
        Gtj(1,j) = calcg(ti(1,j),T,cc)
    end
    plot(ti,Gtj)
endfunction
