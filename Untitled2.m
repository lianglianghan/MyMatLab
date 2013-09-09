x=[1,0,0,0,0,0,0,0,0,0,0];
r=[0.994,0,0,0,0,0,0,0,0,0,0];
p=[1,0.497,0,0,0,0,0,0,0,0,0];
q=[1,0.497,0,0,0,0,0,0,0,0,0];

fprintf('\n\n                                 生成序列\n\n');


fprintf('      n            Xn               Rn             Pn             Qn\n');

for i=1:11
    
        
        if(i==2)
            x(i)=1/(2^(i-1));
            r(i)=r(i-1)/2;
        else if(i>=3)
              x(i)=1/(2^(i-1));
              r(i)=r(i-1)/2;
              p(i)=3*p(i-1)/2-p(i-2)/2;
              q(i)=5*q(i-1)/2-q(i-2);
            end
        end
        
    
    fprintf('     %2d         %f         %f       %f       %f\n',i-1,x(i),r(i),p(i),q(i));
end


fprintf('\n\n                     误差序列\n\n');
fprintf('     n         Xn-Rn        Xn-Pn       Xn-Qn\n');


for k=1:11
    fprintf('    %2d       %f     %f     %f\n',k-1,x(k)-r(k),x(k)-p(k),x(k)-q(k));
end




        
    