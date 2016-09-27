% Problem 7
% 2016.09.27
%
% By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can 
% see that the 6th prime is 13.
%
% What is the 10 001st prime number?

n = 2;
np = 10001;
c = 0;
while n < 1e6 % assume nth prime (np) is less than 1,000,000
  if length(factor(n)) == 1
    c = c + 1;
    if c == np
      break;
    end
  end
  n = n + 1;
end
fprintf('The %d prime is %d\n',np, n);