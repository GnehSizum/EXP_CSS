function yy=xenni(N1,N2,xen,i)
    for n=N2*i:1:N1+N2*(i+1)-2
        xeni(n-N2*i+1)=xen(n+1);
    end
    yy=xeni;