% Intro to Programming with MATLAB
% Homework 6, Problem 2
% 2016.08.24
%
%
function [e,k] = approximate_e(delta)
    k = 0;
    e = 0;
    notFound = true;
    while (notFound)
        e = e + (1/myFactorial(k));
        if (abs(exp(1) - e) <= delta)
            notFound = false;
        else
            k = k + 1;
        end
    end
end

function f = myFactorial(x)
   temp = 0;
    if (x == 1 || x == 0)
        temp = 1;
    else
        temp = x*myFactorial(x-1);
    end
    f = temp;    
end
