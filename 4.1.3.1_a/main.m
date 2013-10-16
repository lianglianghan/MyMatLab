f=inline('sin(x)');


x=[-4:0.001:4];

plot(x,f(x));

hold on;

plot(x,0);

fprintf('P5(x)Ϊ:\n');
jisuan(f,5);

fprintf('P7(x)Ϊ:\n');
jisuan(f,7);

fprintf('P9(x)Ϊ:\n');
jisuan(f,9);


