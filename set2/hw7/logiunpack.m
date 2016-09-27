% Intro to Programming with MATLAB
% Homework 7; Problem 5

function [M] = logiunpack (c)
  n = length(c);
  M = zeros(n);
  
  for k = 1:n
    cv = c{k};
    if ~isempty(cv)
      M(k,cv) = 1;
    end
  end
  M = logical(M);
end