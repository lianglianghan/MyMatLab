
p0=2;
delta=0.0001;
epsilon=0.0001;
max1=20;
A=7;

[p0,err,k,y]=newton(A,p0,delta,epsilon,max1);
fprintf('%f的立方根的值为:  %f\n',A,p0);



p0=6;
delta=0.0001;
epsilon=0.0001;
max1=20;
A=200;

[p0,err,k,y]=newton(A,p0,delta,epsilon,max1);
fprintf('%f的立方根的值为:  %f\n',A,p0);

p0=-2;
delta=0.0001;
epsilon=0.0001;
max1=20;
A=-7;

[p0,err,k,y]=newton(A,p0,delta,epsilon,max1);
fprintf('%f的立方根的值为:  %f\n',A,p0);

