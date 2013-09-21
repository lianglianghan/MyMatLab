g=inline('x*sin(x)-1');
[c,err,a,b,yc]=bisect(g,0,2,0.0000001);


fprintf('\n\n                    用二分法求解 x sin(x)-1=0\n\n');

fprintf(' k     左端点ak       中点ck         右端点bk         函数值f(ck) \n');
maxk=length(yc);
for k=1:maxk
	fprintf('%2d   %9.8f     %9.8f      %9.8f      %9.8f \n',k-1,a(k),c(k),b(k),yc(k));
end



g1=inline('x.*sin(x)-1');
[c,err,a,b,yc]=regula(g1,0,2,0.0000001,0.0000001,30);

fprintf('\n\n                  用试值法求解 x sin(x)-1=0\n\n');
fprintf(' k    左端点ak       中点ck         右端点bk        函数值f(ck) \n');
maxk=length(yc);
for k=1:maxk
	fprintf('%2d   %9.8f     %9.8f      %9.8f      %9.8f \n',k-1,a(k),c(k),b(k),yc(k));
end

