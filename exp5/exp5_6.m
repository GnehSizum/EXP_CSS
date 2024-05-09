% 产生512点的随机序列Xe(n)
Xe = randn(1, 512);

% 定义Xc(n)三角波序列
Xc = zeros(1, 8);
for n = 0:7
    if n >= 0 && n <= 3
        Xc(n+1) = n + 1;
    elseif n >= 4 && n <= 7
        Xc(n+1) = 8 - n;
    end
end

% 线性卷积
Y_overlap_add = overlap_add(Xe, Xc, 8);
Y_overlap_save = overlap_save(Xe, Xc, 8);

% Xe(n)的幅频特性
figure;
plot(abs(fft(Xe, 512)));
title('Xe(n)的幅频特性');
xlabel('频率');
ylabel('幅度');

% Xc(n)的幅频特性
figure;
plot(abs(fft(Xc, 512)));
title('Xc(n)的幅频特性');
xlabel('频率');
ylabel('幅度');

% 重叠相加法卷积后Xe(n)的幅频特性
figure;
plot(abs(fft(Y_overlap_add, 512)));
title('重叠相加法卷积后Xe(n)的幅频特性');
xlabel('频率');
ylabel('幅度');

% 重叠保留法卷积后Xe(n)的幅频特性
figure;
plot(abs(fft(Y_overlap_save, 512)));
title('重叠保留法卷积后Xe(n)的幅频特性');
xlabel('频率');
ylabel('幅度');

% 重叠相加法函数
function Y = overlap_add(X, H, L)
    M = length(X);
    N = length(H);
    P = L + N - 1;
    H = [H zeros(1, P - N)]; % 补零至P长度
    L_H = P - L + 1; % H的长度
    Y = zeros(1, M + N - 1); % 初始化输出序列

    % 分段卷积
    for i = 1:L:M
        x = [X(i:min(i+L-1, M)) zeros(1, P-L)]; % 补零至P长度
        y = ifft(fft(x) .* fft(H)); % 卷积
        Y(i:i+P-1) = Y(i:i+P-1) + y(1:P); % 相加
    end
end

% 重叠保留法函数
function Y = overlap_save(X, H, L)
    M = length(X);
    N = length(H);
    P = L + N - 1;
    H = [H zeros(1, P - N)]; % 补零至P长度
    L_H = P - L + 1; % H的长度
    Y = zeros(1, M + N - 1); % 初始化输出序列

    % 分段卷积
    for i = 1:L:M
        x = [X(i:min(i+L-1, M)) zeros(1, P-L)]; % 补零至P长度
        y = ifft(fft(x) .* fft(H)); % 卷积
        Y(i+L-1:i+P-1) = y(L:P); % 保留重叠部分
    end
end
