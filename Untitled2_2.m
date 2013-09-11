%功能：测试生成序列的稳定性
%作者：亮亮
%日期：2013.09.11
%注解：在图中由于第三个图和前两个的坐标比列差别太大，没有合起来


x=[1,0,0,0,0,0,0,0,0,0,0];      %设置向量（由于数据的存储)
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

fprintf('\n\n');


% while(true)
%     id=input('请输入您要绘制的误差序列的编号(1,2,3):  ');
%     fprintf('\n\n');
%     switch id
%         case 1
            n=0:10;
            subplot(2,1,1);
            plot(n,x-r,'g',n,x-p,'r');
            grid;%添加网格
            set(gca,'xtick',[0:2:10]);%设置横坐标
            legend('Xn-Rn','Xn-Pn',-1);
%             set(gcf,'Color',[0,0,0]);%设置图形窗口颜色
%             set(gca,'ytick',[0.0:0.1:3.0]);
            % set(gca,'ytick',x-r);
            % set(gca,'yticklabel',str2mat('0.000005','0.000010','0.000015'));
%             xlabel('n');
%             ylabel('Xn-Rn');
%             title('误差序列{Xn-Rn}');
           
            hold on;
            
%         case 2
%             n=0:10;
%             plot(n,x-p,'r');
           
            
%             set(gca,'xtick',[0:2:10]);
%             xlabel('n');
%             ylabel('Xn-Pn');
%             title('误差序列{Xn-Pn}');
%             
%         case 3
%             hold on;
            
            n=0:10;  
            subplot(2,1,2);    %图的位置
            plot(n,x-q,'b');   %绘制图形
            grid;           %加网格
            legend('Xn-Qn',-1);  %增加图例
%             set(gca,'xtick',[0:2:10]);
%             xlabel('n');
%             ylabel('Xn-Qn');
%             title('误差序列{Xn-Qn}');
%         otherwise
            
%     end
            
% end

    