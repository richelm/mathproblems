% Intro to Programming with MATLAB
% Homework 5, Problem 5
% 
% Holidays are 1/1, 7/4, 12/25, and 12/31

function h = holiday(month, day)
    holidays = [1,1; 7,4; 12,25; 12,31];
    holiday = [month,day];
    
    if (sum(ismember(holidays,holiday,'rows')) == 1)
        h = true;
    else
        h = false;
    end
end