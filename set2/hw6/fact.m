function f = fact(x)
    temp = 0;
    if (x == 1 || x == 0)
        temp = 1;
    else
        temp = x*fact(x-1);
    end
    f = temp;
end