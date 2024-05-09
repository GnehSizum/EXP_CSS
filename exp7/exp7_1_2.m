num = [4, -2];
den = [1, 0, 2, 5];

G = tf(num, den);

G_ss = ss(G);

G_zpk = zpk(G);

% 显示转换结果
disp('传递函数模型:');
display(G);
disp('状态空间模型:');
display(G_ss);
disp('零极点模型:');
display(G_zpk);