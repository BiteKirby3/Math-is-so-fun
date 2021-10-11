function [z]=calcg(t,T,cc)
    [mT,nT] = size(T)
    [mcc,ncc] = size(cc)
    if(mT~=mcc+1 | ncc~=4 |nT~=1) then
        error("Taille non correcte");
    end 
    if(t==T(mT,1))
        z = cc(mcc,1)+cc(mcc,2)*(t-T(mcc,1))+cc(mcc,3)*((t-T(mcc,1))^2)+cc(mcc,4)*((t-T(mcc,1))^2)*(t-T(mT,1))
    else 
        i = place(T,t)
        z = cc(i,1)+cc(i,2)*(t-T(i,1))+cc(i,3)*((t-T(i,1))^2)+cc(i,4)*((t-T(i,1))^2)*(t-T(i+1,1))
    end
endfunction
