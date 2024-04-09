b = [10]; % f[k] 的系数
a = [1, 3, 2]; % y[k] 的系数

% 通过单位脉冲函数计算单位脉冲响应 h[k]
delta = [1, zeros(1, 30)]; % 生成单位脉冲信号
h = filter(b, a, delta); % 计算单位脉冲响应

stem(0:30, h, 'filled');
xlabel('k');
ylabel('h[k]');
title('单位脉冲响应 h[k]');

disp('单位脉冲响应 h[k]:');
disp(h);