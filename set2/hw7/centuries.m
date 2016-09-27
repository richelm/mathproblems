function c = centuries(y) 
    cl = {'I','II','III','IV','V','VI','VII','VIII','IX','X','XI','XII', ...
    'XIII','XIV','XV','XVI','XVII','XVIII','XIX','XX','XXI','XXII', ...
    'XXIII','XXIV','XXV','XXVI','XXVII','XXVIII','XXIX','XXX'};
    
    c = '';

    % is y a scalar?
    [row,col] = size(y);
    if (row > 1) | (col > 1)
        c = '';
    else
        for i=1:30
            if (y >= (i-1)*100+1 && y <= i*100)
                c = cl{i};
                break;
            end
        end
    end
 
end