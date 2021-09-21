function [c] = cs (myfun, x0, h) //myfun=myf
    c = imag(myfun(x0+h*%i))/h
endfunction
