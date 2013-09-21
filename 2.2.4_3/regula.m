function [c,err,a,b,yc]=regula(f,a0,b0,delta,epsilon,max1)



ya=feval(f,a0);
yb=feval(f,b0);

if ya*yb>0
%     disp('Note :   f(a)*f(b)>0');
    return ;
end

a(1)=a0;
b(1)=b0;

for k=1:max1
    dx=yb*(b(k)-a(k))/(yb-ya);
    c(k)=b(k)-dx;
    ac=c(k)-a(k);
    yc(k)=feval(f,c(k));
    if yc(k)==0
        break;
    elseif yb*yc(k)>0
        b(k+1)=c(k);
        a(k+1)=a(k);
        yb=yc(k);
    else
        a(k+1)=c(k);
        b(k+1)=b(k);
        ya=yc(k);
    end
    dx=min(abs(dx),ac);
    
    if abs(dx)<delta
        break;
    end
    if abs(yc(k))<epsilon
        break;
    end
end
err=abs(b(k)-a(k))/2;
yc(k)=feval(f,c(k));

