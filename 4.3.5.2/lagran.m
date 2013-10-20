function [C,L]=lagran(X,Y)

w=length(X);

n=w-1;

L=zeros(w,w);

for k=1:n+1
    V=1;
    for j=1:n+1
        if k~=j
            V=conv(V,poly(X(j)))/(X(k)-X(j));
        end
    end
    
    L(k,:)=V;
end

%注：L为多项式的系数矩阵（即X的n次方的系数）
%注：C为最终的多项式的系数向量（即X的n次方的系数）

C=Y*L;


