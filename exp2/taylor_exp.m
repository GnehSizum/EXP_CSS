function result = taylor_exp(x, n)
    result = 0;
    
    for k = 0:n
        result = result + x^k / factorial(k);
    end
end