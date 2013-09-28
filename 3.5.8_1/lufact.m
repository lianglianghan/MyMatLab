function X = lufact( A,B )
%LUFACT Summary of this function goes here
%   Detailed explanation goes here


[N N]=size(A);
X=zeros(N,1);
Y=zeros(N,1);
C=zeros(1,N);
R=1:N;

for p=1:N-1
    [max1,j]=max(abs(A(p:N,p)));
    
    C=A(p,:);
    A(p,:)=A(j+p-1,:);
    A(j+p-1,:)=C;
    d=R(p);           %用来记录行的交换过程
    R(p)=R(j+p-1);
    R(j+p-1)=d;
    
    if A(p,p)==0
        break;
    end
    
    for k=p+1:N
        mult=A(k,p)/A(p,p);
        A(k,p)=mult;                %mult存放的是倍数
        A(k,p+1:N)=A(k,p+1:N)-mult*A(p,p+1:N);
    end
end

Y(1)=B(R(1));                     %注意B事先没有交换过
for k=2:N
    Y(k)=B(R(k))-A(k,1:k-1)*Y(1:k-1);     %从上往下代
end

X(N)=Y(N)/A(N,N);

for k=N-1:-1:1
    X(k)=(Y(k)-A(k,k+1:N)*X(k+1:N))/A(k,k);     %从下往上代
end


end

