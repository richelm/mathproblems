% Intro to Programming with MATLAB
% Homework 4, Problem 2
% 
%
function [S,a] = sindeg(deg)
    S = arrayfun(@mySind,deg);
    a = mean(S(:));
end

function s = mySind(d)
    s = sin(d*pi/180);
end