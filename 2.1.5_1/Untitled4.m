%求解函数的不动点

function [k,p,err,P]=Untitled4(g,p0,tol,max1)


P(1)=p0;
for k=2:max1
    P(k)=feval(g,P(k-1));
    err=abs(P(k)-P(k-1));
    relerr=err/(abs(P(k)+eps));
    p=P(k);
    if(err<tol)|(relerr<tol)
        break;
    end
end
if k==max1
    disp('maxinum number of iterations exceeded');
else
    fprintf('%f\n',p);
end

P=P';
    


