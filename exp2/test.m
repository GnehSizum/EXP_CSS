%
% 用于 exp2_6 看看最小值求的对不对
%

syms x;

g = (1/3)*x^3 + x^2 - 3*x - 1;

x_values = -5:0.1:5;
y_values = double(subs(g, x, x_values));

plot(x_values, y_values, 'LineWidth', 2);
title('Graph of g(x) = (1/3)*x^3 + x^2 - 3*x - 1');
xlabel('x');
ylabel('g(x)');
grid on;