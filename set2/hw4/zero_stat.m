% Intro to Programming with MATLAB
% Homework 4, Problem 6
% 
%
function percent_zeros = zero_stat(A)
    ne = numel(A);
    ones = sum(sum(A));
    percent_zeros = ((ne - ones)/ne)*100;
end