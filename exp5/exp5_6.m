clc;clear;
xcn=[1 2 3 4 4 3 2 1];
xen=rand(1,512);
qqqqq=conv(xcn,xen);

figure;
stem([0:1:518],qqqqq);xlabel('n');ylabel('幅度');
axis([0 520 0 16]);

N1=length(xcn);N2=length(xen)/8;
xcn=[xcn zeros(1,N2-1)];
xck=fft(xcn);

for i=1:1:8
    xenii=xeni(N2,xen,i-1);
    xenii=[xenii zeros(1,N1-1)];
    xeki=fft(xenii);
    yki=xck.*xeki;
    yni=ifft(yki);
    y(i,:)=yni;
end

for i=0:1:7
    for j=0:1:i*N2-1
        ynii(i+1,[0+1:1:i*N2-1+1])=0;
    end
    for j=i*N2:1:N1+(i+1)*N2-2
        ynii(i+1,[i*N2+1:1:N1+(i+1)*N2-2+1])=y(i+1,:);
    end
    for j=N1+(i+1)*N2-1:1:N1+8*N2-2
        ynii(i+1,[N1+(i+1)*N2-1+1:1:N1+8*N2-2+1])=0;
    end
end

yn=zeros(1,N1+8*N2-1);

for i=1:1:8
    yn=yn+ynii(i,:);
end

n=0:1:N1+8*N2-2;
figure;
stem(n,yn);xlabel('n');ylabel('幅度');title('重叠相加法');
axis([0 520 0 16]);

xen21=shiftmm(N1-1,xen);
for i=1:1:8
    xen2i(i,:)=xenni(N1,N2,xen21,i-1);
end

for i=1:1:8
    xek2i=fft(xen2i(i,:));
    yk2i=xck.*xek2i;
    yn2i=ifft(yk2i);
    y2(i,:)=yn2i;
end

y2(:,1:N1-1)=[;;;;;;;;];
n2=0:1:8*N2-1;
figure;
stem(n2,[y2(1,:) y2(2,:) y2(3,:) y2(4,:) y2(5,:) y2(6,:) y2(7,:) y2(8,:)]);
xlabel('n');ylabel('幅度');title('重叠保留法');
axis([0 520 0 16]);