function y = ff(x)
    if x >= 0 && x < 1
        y = x;
    elseif x >= 1 && x <= 2
        y = 2 - x;
    else
        y = 0;
    end
end