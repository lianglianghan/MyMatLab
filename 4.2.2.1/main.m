P=[1.28,-0.4,0.2,-0.02];
x=4;
%求解原来的
B=chazhi(P,x,1)


%导数型
D=chazhi(P,x,2)

%积分型
I=chazhi(P,x,3)
