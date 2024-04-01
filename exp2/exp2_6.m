syms x

f = 3*x^5 - x^4 + 2*x^3 + x^2 + 3;
g = (1/3)*x^3 + x^2 - 3*x - 1;

%% (1) 求 f(x) 的根
roots_f = solve(f == 0, x);

disp('(1) f(x) 的根：');
disp(double(roots_f));

%% (2) 求 g(x) 在闭区间[-1,2]上的最小值
interval = -1:0.01:2;
min_value = min(double(subs(g, x, interval)));

disp('(2) g(x) 在闭区间 [-1, 2] 上的最小值：');
disp(min_value);

%% (3) 计算 f(x) + g(x), f(x) * g(x), f(x) / g(x)
sum_fg = f + g;
product_fg = f * g;
quotient_fg = f / g;

disp('(3)');
disp('f(x) + g(x)：');
disp(simplify(sum_fg));

disp('f(x) * g(x)：');
disp(expand(product_fg));

disp('f(x) / g(x)：');
disp(simplify(quotient_fg));

%% (4) 计算 f(x) 的导数
derivative_f = diff(f, x);

disp('(4) f(x) 的导数：');
disp(derivative_f);