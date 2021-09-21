function [fp] = fpdf (myfun, x0, h) //myfun=myf
    fp = (myfun(x0+h)-myfun(x0-h))/(2*h)
endfunction
