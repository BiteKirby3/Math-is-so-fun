function trace(N,T,cc) 
    [mT,nT] = size(T)
    [mcc,ncc] = size(cc)
    if(nT~=mcc+1 | ncc~=3 |mT~=1) then
        error("Taille non correcte");
    end
    Gtj = zeros(1,N)
    ti = linspace(T(1,1),T(1,nT),N) // car T1 ≤ t ≤ Tn
    for j = 1 : N
        t = ti(1,j)
        i = place(T,t) 
        Gtj(1,j) = cc(i,1)+cc(i,2)*t+cc(i,3)*(t^2)
    end
    plot(ti,Gtj)
endfunction
