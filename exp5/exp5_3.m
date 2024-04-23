close all; clear; clc;

figure;
n1 = 0:1:3; xc1 = n1+1; n2 = 4:7; xc2 = 8-n2;
xc = [xc1,xc2]; n = [n1,n2];
subplot(321); stem(n,xc); xlabel ('n'); ylabel('xc'); title('三角序列');

n1 = 0:1:3; xd1 = 4-n1; n2 = 4:7; xd2 = n2-3;
xd = [xd1,xd2]; n = [n1,n2];
subplot(322); stem(n,xd); xlabel('n'); ylabel ('xd'); title('反三角序列');

N=8;
[H1,w1] = freqz (xc,1, 256, 'whole', 1);
Hamplitude1 = abs (H1);
subplot(323); plot(2*w1, Hamplitude1);
title('xc幅频响应'); xlabel ('w/pi'); ylabel ('IH(exp(jw)) 1'); grid on

[H2,w2] = freqz (xd,1, 256, 'whole', 1) ;
Hamplitude2 = abs (H2);
subplot(324); plot(2*w2, Hamplitude2); 
title('xd幅频响应'); xlabel ('w/pi'); ylabel('|H(exp(jw))|'); grid on

[H3, w3] = freqz(xc, 1, N, 'whole', 1);
Hamplitude3 = abs (H3) ;
subplot(325); stem(2*w3, Hamplitude3, 'fill');
title('xc幅频响应进行8点FFT'); xlabel ('n'); ylabel('|H(exp(jw))|'); grid on

[H4, w4] = freqz(xd, 1, N, 'whole', 1) ;
Hamplitude4 = abs (H4);
subplot(326); stem(2*w4, Hamplitude4, 'fill');
title('xd幅频响应进行8点FFT'); xlabel ('n'); ylabel('|H(exp(jw))|'); grid on

% 末尾补零
figure;
n1 = 0:1:3; xc1 = n1+1; n2 = 4:7; xc2 = 8-n2; n3 = 8:15; xc3 = 0*n3;
xc = [xc1,xc2,xc3]; n = [n1,n2,n3];
subplot(321); stem(n,xc); xlabel ('n'); ylabel('xc'); title('三角序列');

n1 = 0:1:3; xd1 = 4-n1; n2 = 4:7; xd2 = n2-3; n3 = 8:15; xd3 = 0*n3;
xd = [xd1,xd2,xd3]; n = [n1,n2,n3];
subplot(322); stem(n,xd); xlabel('n'); ylabel ('xd'); title('反三角序列');

N=16;
[H1,w1] = freqz (xc,1, 256, 'whole', 1);
Hamplitude1 = abs (H1);
subplot(323); plot(2*w1, Hamplitude1);
title('xc幅频响应'); xlabel ('w/pi'); ylabel ('IH(exp(jw)) 1'); grid on

[H2,w2] = freqz (xd,1, 256, 'whole', 1) ;
Hamplitude2 = abs (H2);
subplot(324); plot(2*w2, Hamplitude2); 
title('xd幅频响应'); xlabel ('w/pi'); ylabel('|H(exp(jw))|'); grid on

[H3, w3] = freqz(xc, 1, N, 'whole', 1);
Hamplitude3 = abs (H3) ;
subplot(325); stem(2*w3, Hamplitude3, 'fill');
title('xc幅频响应进行16点FFT'); xlabel ('n'); ylabel('|H(exp(jw))|'); grid on

[H4, w4] = freqz(xd, 1, N, 'whole', 1) ;
Hamplitude4 = abs (H4);
subplot(326); stem(2*w4, Hamplitude4, 'fill');
title('xd幅频响应进行16点FFT'); xlabel ('n'); ylabel('|H(exp(jw))|'); grid on
