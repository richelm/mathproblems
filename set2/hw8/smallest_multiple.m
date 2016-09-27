% Intro to Programming with MATLAB
% Homework 8, Problem 4
% 2016.09.18

function [ s ] = smallest_multiple( n )
    % got warnings on large integers during test; turn these off
    id = 'MATLAB:gcd:largestFlint';
    warning('off',id);
    
    % find the least common multiple of number 1 to n
    lm = uint64(n);
    nmax = uint64(n);
    i = uint64(1);
    while (i <= nmax)
        lm = lcm(lm, i);
        i = i + 1;
    end

    % if lm is greater than max unit64, then answer is 0
    if (lm >= intmax('uint64'))
        s = uint64(0);
    else 
        s = lm;
    end
end