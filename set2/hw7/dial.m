% Intro to Programming with MATLAB
% Homework 7; Problem 4

function [n] = dail(s)
    kmap = ['    ';'ABC ';'DEF ';'GHI ';'JKL ';'MNO ';'PQRS';'TUV ';'WXYZ'];
    ckmap = cellstr(kmap);
    ns = '';
    valid_digits = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    for ii = 1:length(s)
        si = s(ii);
        if isempty(strfind(valid_digits, si))
            ns = '0';
            break;
        elseif strfind('0123456789',si)
            ns = strcat(ns,si);
        else
            for jj = 2:length(ckmap)
                if strfind(ckmap{jj},si)
                    ns = strcat(ns,sprintf('%d',jj));
                end
            end
        end
    end
    n = uint64(str2num(ns));
end