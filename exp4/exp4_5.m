amplitude = 0.5; % 振幅
period = 2; % 周期
t = -3:0.001:3; % 在横轴范围-3到3取样

% 计算三角波信号
triangle_wave = 4*amplitude/pi * asin(sin(2*pi*t/period)); % 利用正弦函数来构造三角波

% 绘制三角波波形图
figure;
plot(t, triangle_wave);
xlabel('t');
ylabel('f(t)');
title('三角波');
axis([-3 3 -1.5 1.5]);
grid on;