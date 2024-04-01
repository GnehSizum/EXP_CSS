num_squares = 64; % 国际象棋棋盘的格子数
total_wheat = 1;  % 第一个格子上放1粒麦子

for i = 2:num_squares
    total_wheat(i) = 2 * total_wheat(i - 1); % 每个格子的麦子数是前一个格子的两倍
end

% 总共需要的小麦数
total_wheat_count = sum(total_wheat);

% 总共需要的小麦袋数
bag_count = total_wheat_count / (1.4e8);

disp(['需要的小麦数量为：', num2str(total_wheat_count)]);
disp(['需要的小麦袋数为：', num2str(bag_count)]);