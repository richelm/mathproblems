% Intro to Programming with MATLAB
% Homework 4, Problem 7
% 
%
function R = reverse_diag(n)
    R = zeros(n);
    R(1:n+1:end) = 1;
    R = fliplr(R);
end