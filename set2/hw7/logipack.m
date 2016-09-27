% Intro to Programming with MATLAB
% Homework 7; Problem 6

function [C] = logipack (M)
    [~,n] = size(M);
    C = cell(1,n);
    %cols = 1:n;
    for k = 1:n
        rv = [];
        for j = 1:n
            if(M(k,j) ~= 0), rv = [rv j]; end;
        end
        if (sum(rv) == 0)
            C{k} = [];
        else
            C{k} = rv;
        end
    end
 end