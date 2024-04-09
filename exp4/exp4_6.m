% 定义三角波信号
t = 0:0.001:2; % 时间范围
triangle_wave = sawtooth(2*pi*t, 0.5);

% 计算三角波信号的频谱
N = length(triangle_wave); % 信号长度
frequencies = -1/(2*(t(2)-t(1))):1/(N*(t(2)-t(1))):1/(2*(t(2)-t(1))); % 频率范围
fft_triangle_wave = fftshift(fft(triangle_wave))/N; % 执行傅立叶变换

% 修正频率向量的长度与傅里叶变换结果一致
if mod(length(frequencies), 2) == 0
    frequencies = frequencies(1:end-1);
    half_len = length(frequencies)/2;
else
    half_len = (length(frequencies)-1)/2;
end

% 绘制频谱
figure;
plot(frequencies, abs(fft_triangle_wave));
xlabel('频率');
ylabel('幅度');
title('三角波信号的频谱');
axis([-20 20 -0.01 0.45]);
grid on;