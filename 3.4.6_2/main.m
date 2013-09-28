A=zeros(7,7);

for i=1:7
    for j=1:7
        A(i,j)=(i-1)^(j-1);
    end
end
B=[1;3;2;1;3;2;1];
X=uptrbk(A,B);
a=zeros(1,7);
for k=1:7
    a(k)=X(k);
    fprintf('a%d = %f   ',k,a(k));
end
fprintf('\n');

hold off
grid on
axis([-0.5,6.5,-2,8]);
hold on
x=[-0.5:0.001:6.5];
y=a(1)+a(2)*(x.^1)+a(3)*(x.^2)+a(4)*(x.^3)+a(5)*(x.^4)+a(6)*(x.^5)+a(7)*(x.^6);

plot(x,y,'r');


x=[0:1:6];
y=[1,3,2,1,3,2,1];
plot(x,y,'.b');

% y=[-1:0.01:7];
% 
% plot(y,g(y),'r');



