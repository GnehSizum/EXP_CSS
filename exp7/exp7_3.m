num = [3, 10];
den = [1, 3, 11];

G = tf(num, den);
figure;
step(G);
Gs = step(G);
xlim([0, 20]); 

step_info_data = stepinfo(G);
disp('阶跃响应的特性参数:');
% disp(step_info_data);
disp(['上升时间：', num2str(step_info_data.RiseTime), 's']);
disp(['峰值时间：', num2str(step_info_data.PeakTime), 's']);
disp(['稳态值：', num2str(0.90909)]);
disp(['超调量：', num2str((step_info_data.Peak-0.90909)/0.90909*100), '%']);
delay_time = step_info_data.SettlingTime - step_info_data.RiseTime;
disp(['延迟时间：', num2str(delay_time), 's']);
