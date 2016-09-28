% Zeller's Congruence formula to calculate day of the week h
%  Reference: https://en.wikipedia.org/wiki/Zeller%27s_congruence
% q = day of the month
% m = month (3 = mar, 4, = april, ..., 13 = Jan, 14 = Feb)
% Y = year
% for January and February Y = Y - 1
%
function [ h ] = zeller(q, m, Y)
    if (m == 13 || m == 14), Y = Y - 1; end
    h = mod((q + floor((13*(m+1))/5) + Y + floor(Y/4) - floor(Y/100) + floor(Y/400)),7);
end