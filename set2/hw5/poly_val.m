% Intro to Programming with MATLAB
% Homework 5, Problem 6
% 2016.08.16
%
% c0, x, and p are scalars
% c is a vector
%   c empty then p = c0
%   c scalar then p = c0+c*x
%   otherwise:
%    p=c0+c(1)x^1 + c(2)x^2...+c(N)x^N
%    where N is the length of c
%
function p = poly_val(c0,c,x)
    if(isempty(c)),p = c0;end
    if(isscalar(c)),p = c0 + c*x;end
    
    if(isvector(c))
        nc = c;
        [row,~] = size(c);
        if(row > 1),nc = c';end 
        pwrs = (1:1:length(nc));
        xpwrs = x.^pwrs;
        p = c0 + sum(nc.*xpwrs);
    end
end