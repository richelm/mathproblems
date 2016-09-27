%% test prime factor product idea

% smallest_multiple(45)
%   ans = 9419588158802421600

n = 45;
lm = uint64(n);
i = uint64(1);
while (i <= 
for i = 2:n
    lm = lcm(lm, i);
end
fprintf('LCM of 1 to %d is %d\n',n,uint64(lm));
fprintf('INTMAX for UINT64 is %d\n',intmax('uint64'));