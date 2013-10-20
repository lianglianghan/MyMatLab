function [B]=chazhi(P,x,i)


if(i==1)
    n=length(P);

    B=zeros(1,n);

    B(n)=P(n);

    for k=n-1:-1:1
        B(k)=P(k)+B(k+1)*x;
    end
elseif(i==2)
    n=length(P)-1;
    
    B=zeros(1,n);
    
    B(n)=n*P(n+1);
    
    for k=n-1:-1:1
        B(k)=k*P(k+1)+B(k+1)*x;
    end
elseif(i==3)
    n=length(P)+1;
    
    B=zeros(1,n);
    
    B(n)=P(n-1)/(n-1);
    
    for k=n-1:-1:2
        B(k)=P(k-1)/(k-1)+B(k+1)*x;
    end
    
    B(1)=0+B(2)*x;
end
        