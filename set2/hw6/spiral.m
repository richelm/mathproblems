% Intro to Programming with MATLAB
% Homework 6, Problem 5
% 2016.08.24
%
% Creates an nxn clockwise spiral matrix
%
% m is the movement indicator:
%   m = 1 right
%   m = 2 down
%   m = 3 left
%   m = 4 up

function [s] = spiral(n)
  s = zeros(n);
  r = round(n/2);
  c = round(n/2);
  
  s(r,c) = 1;
  c = c+1;
  m = 1;
  for k = 2:n*n
    s(r,c) = k;
    switch m
      case 1 % right
        if (s(r+1,c) == 0), m = 2; r = r+1; else c = c+1; end
        
      case 2 % down
        if (s(r,c-1) == 0), m = 3; c = c-1; else r = r+1; end
        
      case 3 % left
        if (s(r-1,c) == 0), m = 4; r = r-1; else c = c-1; end
        
      case 4 % up
        if (s(r, c+1) == 0), m = 1; c = c+1; else r = r-1; end
    end
  end
  
end