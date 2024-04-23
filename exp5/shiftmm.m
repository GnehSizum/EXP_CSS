function t=shiftmm(a,n)
    m=length(n);  

    for i=1:1:a 
        for j=m+i-1:-1:1 
            n(j+1)=n(j);
        end 
    end

    for i=1:1:a
        n(i)=0;
    end
    
    t=n;