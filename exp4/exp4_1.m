A = 1; % 振幅
a = 0.1; % 指数衰减系数
omega = 2*pi; % 角频率
phi = pi/4; % 相位

t = 0:0.01:10; % 时间范围，可以根据需要调整时间步长

signal = A * exp(a*t) .* cos(omega*t + phi);

figure;
plot(t, signal);
xlabel('时间');
ylabel('信号幅值');
title('信号A*exp(at)*cos(ωt+φ)的波形 (A=1, a=0.1, ω=2*pi, φ=pi/4)');