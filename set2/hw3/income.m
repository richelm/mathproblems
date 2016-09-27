% Intro to Programming with MATLAB
% Homework 3, Problem 8
% 
%
function oi = income(rate,price)
    % 6 days per week; 2 8hr shifts per day
    week_hrs = 6*16;
    week_rate = rate .* week_hrs;
    week_price = week_rate .* price;
    oi = sum(week_price);
end