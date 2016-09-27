% Intro to Programming with MATLAB
% Homework 3, Problem 4
% 
% Function top_right returns the top right rows and 
% columns of an input matrix.
%
% input:
%    N - an m x n matrix
% output:
%    T - a matrix of the top right rows and columns of M
%
function T = top_right(N,n)
    T = N(1:n,end-(n-1):end);
end