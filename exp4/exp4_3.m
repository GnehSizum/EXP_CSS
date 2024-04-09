syms t Y(t)
f = dirac(t);  % 输入信号 f(t) = δ(t) 

% 定义微分方程
lhs = diff(Y, t, 2) + 2*diff(Y, t) + 100*Y; % 微分方程左侧
rhs = 10*f;  % 微分方程右侧

% 解微分方程
Y_solution = dsolve(lhs == rhs, Y(0) == 0, subs(diff(Y), t, 0) == 0);

% 计算零状态响应
t_values = 0:0.01:5;  % 时间范围
y_values = subs(Y_solution, t_values);

% 绘制零状态响应
figure;
plot(t_values, y_values);
xlabel('时间 t');
ylabel('响应 y(t)');
title('系统 y''''(t) + 2y''(t) + 100y(t) = 10f(t) 的零状态响应');