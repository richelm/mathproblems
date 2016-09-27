% Intro to Programming with MATLAB
% Homework 3, Problem 2
% 
% Function even_index returns the even rows and 
% columns of an input matrix.
%
% input:
%    M - an m x n matrix
% output:
%    E - a matrix of the even rows and columns of M
%
function E = even_index(M)
    E =  M(2:2:end,2:2:end);
end