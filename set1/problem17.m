% Problem 17
%
% If the numbers 1 to 5 are written out in words: one, two, three, four, five, 
% then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
% 
% If all the numbers from 1 to 1000 (one thousand) inclusive were written out 
% in words, how many letters would be used?
%
% NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and 
% forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 
% 20 letters. The use of "and" when writing out numbers is in compliance with 
% British usage.

less21 = {'one','two','three','four','five','six','seven','eight', ... 
          'nine','ten','eleven','twelve','thirteen','fourteen', ... 
          'fifteen','sixteen','seventeen','eighteen','nineteen','twenty'};
ones = {'','one','two','three','four','five','six','seven','eight','nine'};

tens = {'','twenty','thirty','forty','fifty','sixty','seventy', ... 
        'eighty','ninety'}; 
        
hundreds = {'onehundredand','twohundredand','threehundredand', ... 
        'fourhundredand','fivehundredand','sixhundredand','sevenhundredand', ... 
        'eighthundredand','ninehundredand','onethousandand'};

numltrs = 0;
for n = 1:1000
    if (n < 21)
        numltrs = numltrs + length(less21{n});
    elseif (n > 20 && n < 100)
        o = mod(n,10);
        t = (n - o) / 10;
        numltrs = numltrs + length(tens{t}) + length(ones{o+1});
    else
        h = floor(n/100);
        ts = n - h*100;
        if mod(n,100) == 0
            numltrs = numltrs + length(hundreds{h}) - 3; % -3 for the and
        elseif (ts < 21)
            numltrs = numltrs + length(hundreds{h}) + length(less21{ts});
        else
            o = mod(n,10);
            t = mod((n - o) / 10,10);
            numltrs = numltrs + length(hundreds{h}) + length(tens{t}) + length(ones{o+1});
        end
    end
end
fprintf('Number of letters is %d\n',numltrs);
