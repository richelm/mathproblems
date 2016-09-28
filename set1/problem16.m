% Problem 16
% 2016.09.28
%
% 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
%
% What is the sum of the digits of the number 2^1000?

ns = num2str(2^1000);
lns = length(ns);
s = 0;
for i = 1:lns
  d = str2double(ns(i));
  s = s + d;
end
fprintf('Sum of digits of 2^1000 is %d\n',s);
