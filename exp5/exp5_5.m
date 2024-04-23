n=0:1:15;

xan=exp(-(n-8).^2/2);
xbn=exp(-0.1*n).*sin(2*pi*0.0625*n);

subplot(4,1,1);stem(n,xan);title('Xa(n)');
subplot(4,1,2);stem(n,xbn);title('Xb(n)');

xak=fft(xan);xbk=fft(xbn);x1k=xak.*xbk;
x1n=ifft(x1k);
subplot(4,1,3);stem(n,x1n);title('圆周卷积');

x2n=conv(xan,xbn);
m=0:1:length(x2n)-1;
subplot(4,1,4);stem(m,x2n);title('线性卷积');