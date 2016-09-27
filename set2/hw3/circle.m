% Intro to Programming with MATLAB
% Homework 3, Problem 1
% 
% Function circle returns the area and circumference 
% of circle with given radius r.
% input:
%    r - radius of a circle
% output:
%    area - area of circle with radius r
%    cf - circumference of circle with radius r
% 
function [ area, cf ] = circle(r)
    area = pi*r^2;
    cf = 2*r*pi;
end