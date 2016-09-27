function x = testsum(n)
    y = (1:n);
    x = 0;
    for k = 1:length(y)
        x = x + k;
    end
end