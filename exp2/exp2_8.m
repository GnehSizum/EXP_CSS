for num_cock = 0:21
    for num_hen = 0:34
        num_chick = 100-num_cock-num_hen;
        if mod(num_chick, 3) == 0 && 5 * num_cock + 3 * num_hen + 1/3 * num_chick == 100
            disp(['公鸡', num2str(num_cock), '  母鸡', num2str(num_hen), '  雏鸡', num2str(num_chick)]);
        end
    end
end
