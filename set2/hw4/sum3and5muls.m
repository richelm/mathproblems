% Intro to Programming with MATLAB
% Homework 4, Problem 8
% 
%
function s = sum3and5muls(n)
    s = sum(unique([(3:3:n),(5:5:n)]));
end