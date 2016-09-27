% Intro to Programming with MATLAB
% Homework 8, Problem 3
% 2016.09.21

function [ s ] = huge_add ( a, b )
    % if a and b are chars, then set to char with non digit
    if (~ischar(a)), a = '12.3'; end
    if (~ischar(b)), b = '12.3'; end
    
    % make sure a and b only contain digits 0 - 9
    an = regexprep(a, '[^0-9]',''); % remove everything except digits
    bn = regexprep(b, '[^0-9]','');
    
    if (length(a) == length(an) && ... 
        length(b) == length(bn)) % only digits found in a and b
        s = char([]);
        
        % make a greater than or equal to b
        if (length(a) < length(b))
            t = b;
            b = a;
            a = t;
        end
        
        carry = 0;
        j = length(b);
        for i = length(a):-1:1
            da = str2double(a(i));
            if (j > 0)
                db = str2double(b(j));
                j = j - 1;
            else
                db = 0;
            end
            n = da + db + carry;
            if (n < 10)
                ones = n;
                carry = 0;
            else
                ones = mod(n,10);
                carry = (n - ones) / 10;
            end
            s = strcat(s, num2str(ones));
        end
        if (carry > 0)
            s = strcat(s, num2str(carry));
        end
        s = fliplr(s);
    else
        s = -1;
    end
end