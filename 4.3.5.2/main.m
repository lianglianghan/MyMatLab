
% X=[0 0.6 1.2];
% Y=[1 0.825336 0.362358];
% [C L]=lagran(X,Y);
% % disp(L);
% % disp(C);
% Y*L

X=[1:6];
Y=[66 66 65 64 63 63];

[C,L]=lagran(X,Y);



n=length(C);

%Xn X(n-1) ...X1 0
fprintf('系数矩阵为：\n');
disp(C);
% disp(n);

y=0;

syms x;
for k=1:n
    y=y+C(k)*(x.^(n-k));
end



%使用科学计数法
fprintf('拉格朗日插值多项式如下所示：\n\n');
% disp(vpa(y,4));

%使用分数形式来表示
disp(y);

%将向量C按照中轴翻转，即按照0 X1 X2 Xn
D=fliplr(C);


aver=(Jifen(D,6)-Jifen(D,1))/5;

fprintf('平均温度为： %.2f\n\n',aver);

x=[1:0.01:6];

%进行内敛
f1=inline(y);
% disp(f1);

plot(x,f1(x));

hold on;

plot(X,Y,'.r');






 
