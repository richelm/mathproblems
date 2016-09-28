% Intro to Programming with MATLAB
% Homework 8, Problem 2
% 2016.09.24
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
function [ mondays ] = day_counter( y )
    q = 1;
    mondays = 0;
    for m = 3:14
        % use prior year for jan and feb according to Zeller formula
        if (m == 13 || m == 14)
            Y = y - 1; 
        else
            Y = y;
        end
        
        % zeller formula to calculate the day (0..6)
        h = mod((q + floor((13*(m+1))/5) + Y + floor(Y/4) - floor(Y/100) + floor(Y/400)),7);        
            
        if (h == 2), mondays = mondays + 1; end
    end
end