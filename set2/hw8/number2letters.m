% Intro to Programming with MATLAB
% Homework 8, Problem 6
% 2016.09.21

function [ numltrs ] = number2letters( n )
    less21 = {'one','two','three','four','five','six','seven','eight', ... 
              'nine','ten','eleven','twelve','thirteen','fourteen', ... 
              'fifteen','sixteen','seventeen','eighteen','nineteen','twenty'};
    ones = {'','one','two','three','four','five','six','seven','eight','nine'};
    
    tens = {'','twenty','thirty','forty','fifty','sixty','seventy', ... 
            'eighty','ninety'}; 
            
    hundreds = {'onehundred','twohundred','threehundred', ... 
            'fourhundred','fivehundred','sixhundred','sevenhundred', ... 
            'eighthundred','ninehundred'};
            
    if (n < 21)
        numltrs = length(less21{n});
    elseif (n > 20 && n < 100)
        o = mod(n,10);
        t = (n - o) / 10;
        numltrs = length(tens{t}) + length(ones{o+1});
    else
        h = floor(n/100);
        ts = n - h*100;
        if (ts < 21)
            numltrs = length(hundreds{h}) + length(less21{ts});
        else
            o = mod(n,10);
            t = mod((n - o) / 10,10);
            numltrs = length(hundreds{h}) + length(tens{t}) + length(ones{o+1});
        end
    end
end