clc;
close all;
fp=200;fs=300;Rp=1;As=25;T=0.001;
%使用脉冲响应不变法（存在频率混叠）
wp=2*pi*fp*T;ws=2*pi*fs*T; %wp、ws为数字频率
Wp=wp/T;Ws=ws/T; %Wp、Ws为模拟频率
[N1,fc]=buttord(Wp,Ws,Rp,As,'s');
[b,a]=butter(N1,fc,'s');
[b1,a1]=impinvar(b,a,1/T); %脉冲响应不变法变换到数字滤波器
[h1,w]=freqz(b1,a1);

%使用双极性变换法（不存在频率混叠）
Wp=2/T*tan(wp/2);Ws=2/T*tan(ws/2); %频率预畸变
[N1,fc]=buttord(Wp,Ws,Rp,As,'s'); 
[b,a]=butter(N1,fc,'s');
[b2,a2]=bilinear(b,a,1/T); %双极性变换法变换到数字滤波器
[h2,w]=freqz(b2,a2);
f=w/2/pi/T;

figure
plot(f,abs(h1),'-.',f,abs(h2),'-');
text(90,0.66,'脉冲响应不变法\rightarrow');
text(250,0.46,'\leftarrow双极性变换法');
axis([0,500,0,1]);grid on;
xlabel('频率/Hz');ylabel('幅度');
title('两种方法的幅度特性');
figure
plot(w/pi,angle(h1)/pi,'-.',w/pi,angle(h2)/pi,'-');
text(0.7,0.1,'蓝色脉冲响应不变法');
text(0.7,0,'橙色双极性变换法');
axis([0,1,-1,1]);grid on;
xlabel('w/pi');ylabel('幅度');
title('两种方法的相位特性');
