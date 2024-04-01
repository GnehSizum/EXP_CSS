%% (1)
y = @(x) (x.^2) .* sin(x.^2 - x - 2);

x = linspace(-2, 2, 1000);
y_values = y(x);

figure;
plot(x, y_values);
title('plot  y(x) = x^2 * sin(x^2 - x - 2)');
xlabel('x');
ylabel('y');
grid on;

figure;
fplot(y, [-2, 2]);
title('fplot  y(x) = x^2 * sin(x^2 - x - 2)');
xlabel('x');
ylabel('y');
grid on;

%% (2)
f = @(x, y) (x.^2)/4 + (y.^2)/16 - 1;

figure;
fimplicit(f, [-5 5 -5 5]);
title('plot  x^2/4 + y^2/16 = 1');
xlabel('x');
ylabel('y');
grid on;

figure;
fimplicit(@(x,y) f(x,y), [-5 5 -5 5]);
title('fplot  x^2/4 + y^2/16 = 1');
xlabel('x');
ylabel('y');
grid on;

%% (3)
f = @(x, y) (x.^2 - 2*x) .* exp(-(x.^2 + y.^2 + x.*y));

x = linspace(-3, 3, 100);
y = linspace(-2, 2, 100);
[X, Y] = meshgrid(x, y);
Z = f(X, Y);

% 绘制网格图
figure;
mesh(X, Y, Z);
title('网格图  z = (x^2-2*x)*exp(-x^2-y^2-xy)');
xlabel('x');
ylabel('y');
zlabel('z');
grid on;

% 绘制二维等高线图
figure;
contour(X, Y, Z);
title('二维等高线图  z = (x^2-2*x)*exp(-x^2-y^2-xy)');
xlabel('x');
ylabel('y');
colorbar;

% 绘制三维等高线图
figure;
contour3(X, Y, Z, 50);
title('三维等高线图  z = (x^2-2*x)*exp(-x^2-y^2-xy)');
xlabel('x');
ylabel('y');
zlabel('z');
colorbar;

%% (4)
x = linspace(0, 2*pi, 100);

y1 = cos(x);
y2 = sin(x - pi/2);
y3 = x.^2 .* cos(x - pi);
y4 = exp(sin(x));

figure;

subplot(2,2,1);
plot(x, y1);
title('y1 = cos(x)');

subplot(2,2,2);
plot(x, y2);
title('y2 = sin(x-pi/2)');

subplot(2,2,3);
plot(x, y3);
title('y3 = x^2*cos(x-pi)');

subplot(2,2,4);
plot(x, y4);
title('y4 = e^sin(x)');