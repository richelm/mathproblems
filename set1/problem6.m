% Problem 6
% 2016.09.27
%
% The sum of the squares of the first ten natural numbers is,
%    1^2 + 2^2 + ... + 10^2 = 385
%
% The square of the sum of the first ten natural numbers is,
%    (1 + 2 + ... + 10)^2 = 55^2 = 3025
%
% Hence the difference between the sum of the squares of the first ten natural 
% numbers and the square of the sum is 3025 − 385 = 2640.
%
% Find the difference between the sum of the squares of the first one hundred 
% natural numbers and the square of the sum.

n = 100;

sum_squares = sum([1:n].^2);
square_sum = sum([1:n]).^2;

difference = square_sum - sum_squares;

fprintf('Difference of square_sum and sum_squares is %d\n',difference);