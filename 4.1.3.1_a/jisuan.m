function []=jisuan(f,n)

syms x;

%f=inline('sin(x)');

y=sin(0);


for k=1:n
    
    df=diff(f(x),x,k);
    
    a=subs(df,x,0);
    
    temp=1;
    for j=1:k
        temp=temp*j;
    end
    
    y=y+a*(x^k)/temp;
end

disp(y);