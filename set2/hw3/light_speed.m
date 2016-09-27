% Intro to Programming with MATLAB
% Homework 3, Problem 6
% 
%
function [t,m] = light_speed(v)
    t = v .* (1/(300000*60));
    m = v ./ 1.609;
end