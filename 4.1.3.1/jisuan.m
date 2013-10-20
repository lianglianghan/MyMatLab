function [Y]=jisuan(f,n)

syms x;

X=[-1:0.2:1];

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


for k=1:11
    Y(k)=subs(y,x,X(k));
end

disp(y);