% Problem 2
% 2016.09.25

% Each new term in the Fibonacci sequence is generated by adding the previous 
% two terms. By starting with 1 and 2, the first 10 terms will be:
%
%    1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
%
% By considering the terms in the Fibonacci sequence whose values do not 
% exceed four million, find the sum of the even-valued terms.

fmax = 4e6;
s = 2;
f1 = 1;
f2 = 2
fn = f1 + f2;

while fn <= fmax
  if mod(fn, 2) == 0
    s = s + fn;
  end
  
  f1 = f2;
  f2 = fn;
  fn = f1 + f2;
end
fprintf('Sum of even Fibonacci number less than or equal to %d is %d\n', fmax, s);
