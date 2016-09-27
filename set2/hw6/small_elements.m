% Intro to Programming with MATLAB
% Homework 6, Problem 2
% 2016.08.24
%
%

function indexes = small_elements(X)
    [rows,cols] = size(X);
    indexes = [];
    for c = 1:cols
        for r = 1:rows
            if (c*r > X(r,c))
                indexes(end+1,1) = r;
                indexes(end,2) = c;
            end
        end % end inner for loop
    end % end outer for loop
    
end