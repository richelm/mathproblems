% Intro to Programming with MATLAB
% Homework 3, Problem 3
% 
% Function flip_it returns the input row vector in
% reverse order. Example, if input is [1,2,3], then
% ouput is [3,2,1].
%
% input:
%    v - a row vector of length n
% output:
%    w - a row vector of that is in reverse order of v
%
function w = flip_it(v)
    w = v(end:-1:1);
end