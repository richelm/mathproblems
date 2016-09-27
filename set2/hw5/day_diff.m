% Intro to Programming with MATLAB
% Homework 5, Problem 4
% 
%
function dd = day_diff(month1, day1, month2, day2)
    month_days = [0,31,59,90,120,151,181,212,243,273,304,334];
    valid_days = [31,28,31,30,31,30,31,31,30,31,30,31];
    months = 1:1:12;
    days = 1:1:31;

    % check month and day inputs are correct type of scalar
    if ~(isscalar(month1) && isscalar(day1) && isscalar(month2) && isscalar(day2))
        dd = int16(-1);
    % check month and day inputs are within valid limits 1 to 12 and 1 to 31
    elseif ~(any(months==month1) && any(months==month2) && any(days==day1) && any(days==day2))
        dd = int16(-1);
    % check day valid for the month
    elseif ((day1 > valid_days(month1)) || (day2 > valid_days(month2)))
        dd = int16(-1);
    else
        dd = int16(abs((month_days(month1)+day1) - (month_days(month2)+day2)));
    end
end