% Problem 19
% 2016.09.29
%
% Research:
%
% Zeller's Congruence formula to calculate day of the week h
% Reference: https://en.wikipedia.org/wiki/Zeller%27s_congruence
% Inputs: 
%   q = day of the month (always 1 for this problem)
%   m = month (3 = mar, 4, = april, ..., 13 = Jan, 14 = Feb)
%   Y = year; for January and February Y = Y - 1
% Ouput:
%   h = 0, 1, 2, 3, 4, 5, 6; where 0 = Sat, 1 = Sun, 2 = Mon, ... 6 = Fri
%
% The formula adjust for leap year, so no need to check for those.
%
% Question: 
% How many Sundays fell on the first of the month during the twentieth 
% century (1 Jan 1901 to 31 Dec 2000)? 
%

q = 1;
sundays = 0;
y = 1901;
while y <= 2000
    % for each month of the year y
    for m = 3:14
        % use prior year for jan and feb according to Zeller formula
        if (m == 13 || m == 14)
            Y = y - 1; 
        else
            Y = y;
        end
        
        % zeller formula to calculate the day (0..6)
        h = mod((q + floor((13*(m+1))/5) + Y + floor(Y/4) - floor(Y/100) + floor(Y/400)),7);        
            
        if (h == 1), sundays = sundays + 1; end
    end
    y = y + 1;
end
fprintf('Number of Sundays on first of month in twentieth century was %d\n', sundays);