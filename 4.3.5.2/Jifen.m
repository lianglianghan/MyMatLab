function i=Jifen(A,x)

n=length(A);

i=A(n)/n;

for k=n-1:-1:1
    i=i*x+A(k)/k;
end
i=i*x+0;
    