syms t y(t)
f = 10 * sin(2*pi*t) * heaviside(t);
dy = diff(y, t);
d2y = diff(y, t, 2);

% 定义微分方程
ode = d2y + 2*dy + 100*y == 10*f;

% 解微分方程
ySol(t) = dsolve(ode, y(0) == 0, dy(0) == 0); % 初始条件 y(0) = 0, y'(0) = 0

% 绘制零状态响应
figure;
fplot(ySol, [0, 5]); % 绘制响应的图像
xlabel('时间 t');
ylabel('响应 y(t)');
title('系统 y''''(t) + 2y''(t) + 100y(t) = 10f(t) 的零状态响应');