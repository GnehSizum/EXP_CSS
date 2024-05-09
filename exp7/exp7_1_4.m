A = [0 1; -1 -2];
B = [0; 1];
C = [0 1];
D = 0;

[num,den] = ss2tf(A, B, C, D);
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