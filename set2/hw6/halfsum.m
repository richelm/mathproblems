% Intro to Programming with MATLAB
% Homework 6, Problem 2
% 2016.08.24
%
%

function hs = halfsum(A)
    s = size(A,1);

    hs = 0;
    if (s == 1)
        hs = sum(A);
    else
        for k = 1:s
            if (k == s)
                hs = hs + A(end);
            else
                hs = hs + sum(A(k*s:s-1:end-1));
            end
        end
    end
end