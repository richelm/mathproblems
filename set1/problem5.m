% Problem 5
% 2016.09.25
%
%
% 2520 is the smallest number that can be divided by each of the numbers 
% from 1 to 10 without any remainder.
%
% What is the smallest positive number that is evenly divisible by all of 
% the numbers from 1 to 20?

n = 10;

% find the least common multiple of number 1 to n
lm = uint64(n);
nmax = uint64(n);
i = uint64(1);
while (i <= nmax)
    lm = lcm(lm, i);
    i = i + 1;
end

% if lm is greater than max unit64, then answer is 0
if (lm >= intmax('uint64'))
    s = uint64(0);
else 
    s = lm;
end

fprintf('Smallest positive integer divisible by numbers less than %d is %d\n',n,lm);