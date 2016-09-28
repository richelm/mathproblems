% Problem 14
% 2016.09.28

% The following iterative sequence is defined for the set of positive integers:
%
%    n → n/2 (n is even)
%    n → 3n + 1 (n is odd)
%
% Using the rule above and starting with 13, we generate the following sequence:
%    13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
%
% It can be seen that this sequence (starting at 13 and finishing at 1) 
% contains 10 terms. Although it has not been proved yet (Collatz Problem), 
% it is thought that all starting numbers finish at 1.
%
% Which starting number, under one million, produces the longest chain?
%
% NOTE: Once the chain starts the terms are allowed to go above one million.
% 
% Longest chain is 525 numbers long, starting at 837799

lim = 1e6;
longest_chain = [];

i = 1;
while i < lim
  n = i;
  chain = [n];
  while n ~= 1
    if mod(n,2) == 0
      n = n/2;
    else
      n = 3*n+1;
    end
    chain = [chain n];
  end
  if (length(chain) > length(longest_chain))
    longest_chain = chain;
    start_num = i;
  end
  i = i + 1;
end
fprintf('Longest chain is %d numbers long, starting at %d\n', ... 
        length(longest_chain), start_num);
