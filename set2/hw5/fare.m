% Intro to Programming with MATLAB
% Homework 5, Problem 2
% 
%
function f = fare(distance, age)
    % ten mile trip is $4.25
    % calculate fare without discount
    if (distance <= 1)
        f = 2;
    elseif (distance > 1) && (distance <= 10)
        f = 2+(round(distance-1)*0.25);
    else
        f = 4.25+(round(distance-10)*0.10);
    end
    % discount 20% based on age of rider
    if (age <= 18 || age >= 60)
        f = f*0.80;
    end
end