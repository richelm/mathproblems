% Intro to Programming with MATLAB
% Homework 4, Problem 3
% 
%
function S = simple_stats(N)
    S(:,1) = mean(N,2);
    S(:,2) = median(N,2);
    S(:,3) = min(N,[],2);
    S(:,4) = max(N,[],2);
end