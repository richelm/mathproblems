% Intro to Programming with MATLAB
% Homework 5, Problem 1
% 
%
function e = eligible(v,q)
    m = mean([v,q]);
    e = (m >=92 && (v > 88 && q > 88));
end
    