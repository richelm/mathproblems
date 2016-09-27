% Intro to Programming with MATLAB
% Homework 4, Problem 5
% 
%
function [segments,poles] = fence(lng,seg)
    segments = ceil(lng/seg);
    poles = segments+1;
end