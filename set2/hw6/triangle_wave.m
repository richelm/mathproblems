% Intro to Programming with MATLAB
% Homework 6, Problem 6
% 2016.08.24

function [summs] = triangle_wave (n)
    t = linspace(0,4*pi,1001);
    summs(1:1001) = 0;
    for k = 0:n
        summs = summs + ((-1)^k*sin((2*k+1)*t)) / ((2*k+1)^2);
    end
end
