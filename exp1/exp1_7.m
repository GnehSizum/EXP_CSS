x = linspace(0, 2, 100);

y1 = x.^(1/2);
y2 = x.^2;
y3 = x.^(1/3);
y4 = x.^3;
y5 = x;

figure;
plot(x, y1, 'r', 'LineWidth', 2); % 绘制 y1=x^(1/2)
hold on;
plot(x, y2, 'g', 'LineWidth', 2); % 绘制 y2=x^2
plot(x, y3, 'b', 'LineWidth', 2); % 绘制 y3=x^(1/3)
plot(x, y4, 'm', 'LineWidth', 2); % 绘制 y4=x^3
plot(x, y5, 'c', 'LineWidth', 2); % 绘制 y5=x

legend('y1 = x^{1/2}', 'y2 = x^2', 'y3 = x^{1/3}', 'y4 = x^3', 'y5 = x');
xlabel('x');
ylabel('y');
title('Plot of Different Functions');

hold off;