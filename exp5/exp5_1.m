clc;clear;
n = 0:15; p1 = 8; p2 = 13; p3 = 14; q1 = 2; q2 = 4; q3 = 8;
% p = 8, q = 2, 4, 8
x1 = exp(-(n-p1).*(n-p1)/q1); x2 = exp(-(n-p1).*(n-p1)/q2); x3 = exp(-(n-p1).*(n-p1)/q3);
x1w = fft(x1); x2w = fft(x2); x3w = fft(x3);
figure(1);
subplot(3,2,1); stem(n, x1, 'fill'); ylabel('p=8, q=2'); title('时域');
subplot(3,2,2); stem(n, abs(x1w), 'fill'); title('频域');
subplot(3,2,3); stem(n, x2, 'fill'); ylabel('p=8, q=4')
subplot(3,2,4); stem(n, abs(x2w), 'fill');
subplot(3,2,5); stem(n, x3, 'fill'); ylabel('p=8, q=6')
subplot(3,2,6); stem(n, abs(x3w), 'fill');
sgtitle('高斯序列时域和幅频特性');
% q = 8, p = 8, 13, 14
x1 = exp(-(n-p1).*(n-p1)/q3); x2 = exp(-(n-p2).*(n-p2)/q3); x3 = exp(-(n-p3).*(n-p3)/q3);
x1w = fft(x1); x2w = fft(x2); x3w = fft(x3);
figure(2);
subplot(3,2,1); stem(n, x1, 'fill'); ylabel('p=8, q=8'); title('时域');
subplot(3,2,2); stem(n, abs(x1w), 'fill'); title('频域');
subplot(3,2,3); stem(n, x2, 'fill'); ylabel('p=13, q=8')
subplot(3,2,4); stem(n, abs(x2w), 'fill');
subplot(3,2,5); stem(n, x3, 'fill'); ylabel('p=14, q=8')
subplot(3,2,6); stem(n, abs(x3w), 'fill');
sgtitle('高斯序列时域和幅频特性');
