% Intro to Programming with MATLAB
% Homework 5, Problem 3
% 2016.08.15
%
% i, j, k are indexes to minval, maxval, 
% midval respectively into v. posv is used
% to find position of medval given positions
% of minval and maxval
%
function [minval, midval, maxval] = sort3(v)
    posv = [1,2,3];
    
    if ((v(1) == v(2)) && (v(2) == v(3)))
        % special case where all values equal
        i=1; j=2; k=3;
    else
        % find minval
        i = 1;
        if (v(2) < v(i)); i = 2; end
        if (v(3) < v(i)); i = 3; end
        
        % find maxval
        j = 1;
        if (v(2) > v(j)); j = 2; end
        if (v(3) > v(j)); j = 3; end
        
        % use minval and maxval to find midval
        mid_max = [i,j];
        
        % find midval
        k = find(~(ismember(posv,mid_max)));
    end
    minval = v(i);
    midval = v(k);
    maxval = v(j);
end