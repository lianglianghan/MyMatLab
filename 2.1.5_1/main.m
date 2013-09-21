function main

figure(1)
hold off
grid on
axis([-5,5,-5,5]);
% axis square
hold on

g=inline('x.^5-3*x.^3-2*x.^2+2');
x=[-5:0.001:5];
plot(x,g(x),'r');

plot(x,x,'g');

fprintf('第一个函数的不动点为:  ');
% [k,p,err,P]=Untitled4(g,-1.8,0.01,100);
% [k,p,err,P]=Untitled4(g,0.4,0.01,100);
[k,p,err,P]=Untitled4(g,2,0.000001,100);


figure(2)
hold off
grid on
axis([-2,2,-2,2]);
% axis square
hold on

g1=inline('cos(sin(x))');
x=[-2:0.001:2];
plot(x,g1(x),'y',x,x,'b');
fprintf('第二个函数的不动点为:  ');
[k,p,err,P]=Untitled4(g1,0.5,0.000001,100);

figure(3)
hold off
grid on
axis([-5,5,-5,5]);
% axis square
hold on

g2=inline('x.^2-sin(x+0.15)');
x=[-5:0.001:5];
plot(x,g2(x),'r',x,x,'y');
fprintf('第三个函数的不动点为:  ');
% [k,p,err,P]=Untitled4(g2,-0.5,0.000001,100);
[k,p,err,P]=Untitled4(g2,1.5,0.000001,100);


figure(4)
hold off
grid on
axis([-5,5,-10,10]);
% axis square
hold on

g3=inline('x.^(x-cos(x))');
x=[-5:0.0001:5];
plot(x,g3(x),'r');
plot(x,x,'b');
fprintf('第三个函数的不动点为:  ');
% [k,p,err,P]=Untitled4(g3,-0.7,0.000001,100);
[k,p,err,P]=Untitled4(g3,1,0.000001,100);
