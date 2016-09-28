% Problem 10
% 2016.09.27
%
% Find the sum of all the primes below two million.

% concider only odd number greater than 10
n = [11:2:2e6-1];

% remove numbers divisible by 5
n = n(logical(mod(n,5)));

% remove numbers divisible by 3
n = n(logical(mod(n,3)));

% we know the sum of primes less than 10 is 17
s = 17;

% a number is prime is number (length) of factors is 1
for i = n
  if length(factor(i)) == 1, s = s + i; end
end

fprintf('Sum of primes below %d is %d\n',2e6, s);