function yy=xeni(N2,xen,i)
    for n=N2*i:1:N2*(i+1)-1
        xeni(n-N2*i+1)=xen(n+1);
    end
    yy=xeni;