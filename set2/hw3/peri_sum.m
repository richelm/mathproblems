% Intro to Programming with MATLAB
% Homework 3, Problem 5
% 
%
function sump = peri_sum(M)
    fr = sum(M(1,:));
    fc = sum(M(2:end-1,1));
    lr = sum(M(end,:));
    lc = sum(M(2:end-1,end));
    sump = fr + fc + lr + lc;
end