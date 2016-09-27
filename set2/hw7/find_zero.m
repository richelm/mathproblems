function [x] = find_zero(f, x1, x2)
    NMAX = 1000; % maximum iterations
    
    n = 1;
    while (n <= NMAX)
        x = (x1 + x2)/2;
        y = f(x);
        zero_found = (abs(y) < 1e-10);
        if (zero_found)
            break;
        end;
        
        if (sign(y) == sign(f(x1)))
            x1 = x;
        else
            x2 = x;
        end
        n = n + 1;
    end
    fprintf('Iterations: %d\n', n);
    
    % if max iterations reached return empty scalar
    if (n == NMAX)
        x = [];
    end
end