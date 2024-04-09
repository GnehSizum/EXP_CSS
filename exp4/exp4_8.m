% 定义参数
alpha = 0.5; % α 的值
omega = -pi:0.01:pi; % 角频率 Ω 的范围

% 计算幅度响应
h = 1 ./ abs(1 - alpha*exp(-1j*omega));

% 绘制幅度响应曲线
figure;
plot(omega, h);
xlabel('频率 Ω');
ylabel('幅度');
title('幅度响应曲线 H(e^{jΩ}) = 1 / (1 - αe^{-jΩ})');
axis([-4 4 0.6 2.2]);
grid on;