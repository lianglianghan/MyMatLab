while(true)
a=input('Enter a; ');
b=input('Enter b; ');
c=input('Enter c; ');

% fprintf('进行第一种求解的结果如下\n');
% 
d=sqrt(b^2-4*a*c);
% 
% x1=((-b)+d)/(2*a);
% x2=((-b)-d)/(2*a);
% 
% fprintf('x1=%f\n',x1);
% fprintf('x2=%f\n',x2);
% 
% fprintf('进行第二种求解的结果如下\n');

if(b>0)
    x1=(-2*c)/(b+d);
    x2=((-b)-d)/(2*a);
else if(b<0)
        x1=((-b)+d)/(2*a);
        x2=(-2*c)/(b-d);
    end
 end

    fprintf('x1 = %f\n',x1);
    fprintf('x2 = %f\n',x2);
end
   