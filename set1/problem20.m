% Problem 20
% 2016.09.29
%
% Find the sum of the digits in the number 100!

n = 10;
%ns = num2str(factorial(n));
%ns = num2str(prod(1:n));
ns = gamma(10);
lns = length(ns);
s = 0;
i = 1;
while i <= lns
  d = str2double(ns(i));
  s = s + d;
  i = i + 1;
end
fprintf('Sum of digits of %d! is %d\n',n,s);
