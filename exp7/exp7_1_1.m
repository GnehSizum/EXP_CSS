num = conv([4, 0], conv([1, 2], poly([(-3-sqrt(3)*1i)/2, (-3+sqrt(3)*1i)/2, (-3-sqrt(3)*1i)/2, (-3+sqrt(3)*1i)/2])));
den = conv([1, 0], conv(poly([-1, -1, -1]), [1, 3, 2, 5]));

% 创建传递函数模型
G = tf(num, den);

% 转换为状态空间模型
G_ss = ss(G);

% 转换为零极点增益模型
G_zpk = zpk(G);

% 显示转换结果
disp('传递函数模型:');
display(G);
disp('状态空间模型:');
display(G_ss);
disp('零极点模型:');
display(G_zpk);
