function [c,err,a,b,yc]=bisect(f,a0,b0,delta)

ya=feval(f,a0);
yb=feval(f,b0);

if ya*yb>0
    return;
end
max1=1+round((log(b0-a0)-log(delta))/log(2));

a(1)=a0;
b(1)=b0;

for k=1:max1
    c(k)=(a(k)+b(k))/2;
    yc(k)=feval(f,c(k));
    if yc(k)==0
        a(k+1)=c(k);
        b(k+1)=c(k);
    elseif yb*yc(k)>0
        b(k+1)=c(k);
        a(k+1)=a(k);
        yb=yc(k);
    else
        a(k+1)=c(k);
        b(k+1)=b(k);
        ya=yc(k);
    end
    if b(k+1)-a(k+1)<delta
        break;
    end
end
c(k)=(a(k)+b(k))/2;
err=abs(b(k)-a(k));
yc(k)=feval(f,c(k));

