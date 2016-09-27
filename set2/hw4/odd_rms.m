% Intro to Programming with MATLAB
% Homework 4, Problem 4
% 
%
function orms = odd_rms(nn)
    orms = sqrt(mean([1:2:nn*2].^2));
end