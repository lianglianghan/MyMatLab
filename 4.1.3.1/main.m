f=inline('sin(x)');


x=[-4:0.001:4];

plot(x,f(x));

hold on;

plot(x,0);

fprintf('P5(x)Ϊ:\n');
Y_5=jisuan(f,5);


fprintf('P7(x)Ϊ:\n');
Y_7=jisuan(f,7);

fprintf('P9(x)Ϊ:\n');
Y_9=jisuan(f,9);


%����Ϊ4.1.3.b������
X=[-1:0.2:1];

for k=1:11
    Y_1(k)=feval(f,X(k));
end

fprintf('�����ı�������ʾ��\n\n');

fprintf('      x       sin(x)      P5(x)    P7(x)     P9(x)\n');

D1=[X' Y_1' Y_5' Y_7' Y_9'];
disp(D1);







