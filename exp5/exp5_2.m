n=0:1:15; a=0.1; f1=0.0625; f2=0.04375; f3=0.05625;
xb1=exp(-a*n).*sin(2*pi*f1*n);
figure 
subplot(3, 2, 1); stem(n, xb1,'.');
title("f=0. 0625的时域特性"); xlabel('n'); ylabel('xb1 (n)'); grid on;
[H, w] = freqz(xb1,  1,  [], 'whole', 1);
Hamplitude = abs (H);
subplot(3, 2, 2); plot (w, Hamplitude);
title("f=0. 0625的幅频响应"); xlabel('w/ (2*pi)'); ylabel('|H(exp(jw))|');
grid on
xb2=exp(-a*n) .* sin(2*pi*f2*n) ;
subplot(3, 2, 3); stem(n, xb2, '.');
title("f=0. 04375的时域特性"); xlabel('n'); ylabel('xb2 (n)'); grid on
[H, w] = freqz(xb2, 1, [], 'whole', 1);
Hamplitude = abs (H);
subplot(3, 2, 4);
plot(w, Hamplitude);
title("f=0. 04375的幅频响应"); xlabel('w/(2*pi)' ); ylabel('|H(exp(jw))|'); grid on
xb3=exp(-a*n) .* sin (2*pi*f3*n);
subplot (3, 2, 5);
stem(n, xb3,'.' );
title("f=0. 05625的时域特性"); xlabel('n'); ylabel('xb3(n)');
grid on
[H, w] = freqz(xb3, 1, [], 'whole', 1);
Hamplitude = abs (H);
subplot(3, 2, 6); plot (w,Hamplitude);
title("f=0. 05625的幅频响应"); xlabel('w/(2*pi)'); ylabel('|H(exp(jw))|'); grid on
