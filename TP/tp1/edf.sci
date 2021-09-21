function [e] = edf (myfun) //myfun=fpdf
    e = zeros(1, 17)
    for i = 1 : 17
        e(1,i) = abs(exp(%pi/4)*sqrt(2)-myfun(myf,%pi/4,10^(-i)))
    end
endfunction
