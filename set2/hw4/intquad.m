% Intro to Programming with MATLAB
% Homework 4, Problem 1
% 
%
function Q = intquad(n,m)
    % create the 2nX2m matrix of zeros
    Q = zeros(2*n,2*m);
    
    % upper right submatrix to 1
    Q(1:n,m+1:end) = 1;
    
    % lower left submatrix to 2
    Q(n+1:end,1:m) = 2;
    
    % lower right submatrix to 3
    Q(n+1:end,m+1:end) = 3;
end
    