% Intro to Programming with MATLAB
% Homework 5, Problem 7
% 2016.08.20
%
%
function out = exp_average(input, bin)
    persistent outlast
    persistent b
    
    % check if first time called
    if ((isempty(outlast)) && (nargin == 1))
        b = 0.1;
        out = input;
    elseif (nargin == 2)
        out = input;
        b = bin;
    else
        out = (b*input) + ((1-b)*outlast);
    end        
    outlast = out;
 
end