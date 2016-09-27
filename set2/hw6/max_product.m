% Intro to Programming with MATLAB
% Homework 6, Problem 7
% 2016.08.24
%
function [product,index] = max_product(v,n)
    lv = length(v);
    nm1 = n-1;
    if (n > lv)
        product = 0;
        index = -1;
    elseif (n == lv)
        product = prod(v);
        index = 1;
    else % n < lv
        k = lv-nm1;
        product = 0;
        while (k >= 1)
            current_product = prod(v(k:k+nm1));
            if (current_product >= product)
                product = current_product;
                index = k;
            end
            k = k-1;
        end
    end

end