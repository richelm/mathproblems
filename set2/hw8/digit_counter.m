% Intro to Programming with MATLAB
% Homework 8, Problem 1
% 2016.09.24
%
% Count the number of digits [0-9] in a file by reading line
% by line. For each line remove everything except digits and
% sum the lengths of lines with only digits.
%
function [ digits ] = digit_counter( filename )
    % open file and check for errors
    fid = fopen(filename, 'rt');
    if (fid < 0)
        digits = -1;
        return;
    end

    digits = 0;
    line = fgets(fid);
    while ischar(line)
        nline = regexprep(line,'[^0-9]',''); % remove everything except digits
        digits = digits + length(nline);
        line = fgets(fid);
    end    
    fclose(fid);
end
