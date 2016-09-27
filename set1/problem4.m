% Problem 4
% 2016.09.25
%
% A palindromic number reads the same both ways. The largest palindrome made 
% from the product of two 2-digit numbers is 9009 = 91 × 99.
%
%  Find the largest palindrome made from the product of two 3-digit numbers.

dig = 3
dmin=10^(dig-1);
dmax=10^dig-1;   
n = 0;
for d1 = dmax:-1:dmin
  for d2 = dmax:-1:dmin
    p = d1*d2;
    ns = num2str(p);
    l = length(ns);
    k = floor(l/2);
    ns1 = ns(1:k);
    ns2 = fliplr(ns(l-(k-1):l));
    if strncmp(ns1,ns2,k)
        if (p > n), n = p;end;
    end
  end
end
fprintf('Largest palindrome of two %d-digit numbers is %d\n',dig, n);