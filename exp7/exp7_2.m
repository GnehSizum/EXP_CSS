% 定义开环传递函数
num = [1]; % 分子多项式的系数
den = [1 5.5 2 0]; % 分母多项式的系数
G = tf(num, den); % 创建传递函数

% 绘制根轨迹图
figure;
rlocus(G); % 绘制根轨迹图

% 选择根轨迹上的一个点
% 在图形上点击选中一个点，或者手动指定一个复数
chosen_point = -2 + 2i; % 选取一个点，例如 (-2+2i)

% 计算该点的增益及其所有极点的位置
[K, poles] = rlocfind(G, chosen_point);
disp(['增益 K = ', num2str(K)]);
disp('极点位置:');
disp(poles);
