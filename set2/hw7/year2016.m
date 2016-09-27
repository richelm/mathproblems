% Intro to Programming with MATLAB
% Homework 7, Problem 1
%
% Created: 2016-09-07

function [ monstruct ] = year2016(mi)
%YEAR2016 Return row vector of day of the month
%  
    mths = ['January  ';'February ';'March    ';'April    ';'May      ';'June     '; ...
    'July     ';'August   ';'September';'October  ';'November ';'December '];
    cmths=cellstr(mths);
    
    if (isscalar(mi))
        if (mi >= 1 && mi <= 12) && (mod(mi,1) == 0)
            m = cmths{mi};
            eom = eomday(2016,mi);
            monstruct.month=[];monstruct.date=[];monstruct.day=[];
            monstruct(eom).month = [];
            for ii = 1:eom
                dt = sprintf('%d/%d/2016',mi,ii);
                [dy,nm] = weekday(dt);
                monstruct(ii).month = m;
                monstruct(ii).date = ii;
                monstruct(ii).day = nm;
            end
        else
            monstruct = [];
        end
    else
        monstruct = [];
    end
end