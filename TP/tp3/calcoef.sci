function [cc]=calcoef(T,y)
    d = cald(T,y)
    [n,m] = size(T)
    for i = 1 : n-1
        h(i,1)=T(i+1,1)-T(i,1)
    end
    for i = 1:n-1
        cc(i,1)=y(i,1)
        cc(i,2)=d(i,1)
        cc(i,3)=((y(i+1,1)-y(i,1))/(h(i,1)^2))-(d(i,1)/h(i,1))
        cc(i,4)=((d(i+1,1)+d(i,1))/(h(i,1)^2))-2*((y(i+1,1)-y(i,1))/(h(i,1)^3))
    end
    
endfunction
