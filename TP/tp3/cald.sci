function [d]=cald(T,y)
    [mT,nT] = size(T)
    [my,ny] = size(y)
    if(mT~=my| nT~=1 |ny~=1) then
        error("Taille non correcte");
    end 
    n=mT
    h = zeros(n-1,1)
    //calculer h
    for i = 1 : n-1
        h(i,1)=T(i+1,1)-T(i,1)
    end
    A = zeros(n,n)
    u = zeros(n,1)
    //calculer A
    A(1,1)=2/h(1,1)
    A(1,2)=1/h(1,1)
    A(n,n)=2/h(n-1,1)
    A(n,n-1)=1/h(n-1,1)
    for i = 2:n-1
        A(i,i)=(2/h(i,1)+2/h(i-1,1))
        A(i,i-1)=1/h(i-1,1)
        A(i,i+1)=1/h(i,1)
    end
    //calculer u
    u(1,1)=3*(y(2,1)-y(1,1))/(h(1,1)^2)
    u(n,1)=3*(y(n,1)-y(n-1,1))/(h(n-1,1)^2)
    for j = 2:n-1
        u(j,1) = 3*((y(j,1)-y(j-1,1))/(h(j-1,1)^2)+(y(j+1,1)-y(j,1))/(h(j,1)^2))
    end
    //résoudre le système Ad=u
    d = resolchol(A,u)
endfunction
