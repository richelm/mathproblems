% Intro to Programming with MATLAB
% Homework 3, Problem 7
% 
%
function amag = accelerate(F1,F2,m)
    F = F1 + F2;
    A = F ./ m;
    amag = sqrt(sum(A.*A));
end