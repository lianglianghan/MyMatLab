%���ܣ������������е��ȶ���
%���ߣ�����
%���ڣ�2013.09.11
%ע�⣺��ͼ�����ڵ�����ͼ��ǰ������������в��̫��û�к�����


x=[1,0,0,0,0,0,0,0,0,0,0];      %�����������������ݵĴ洢)
r=[0.994,0,0,0,0,0,0,0,0,0,0];
p=[1,0.497,0,0,0,0,0,0,0,0,0];
q=[1,0.497,0,0,0,0,0,0,0,0,0];

fprintf('\n\n                                 ��������\n\n');


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


fprintf('\n\n                     �������\n\n');
fprintf('     n         Xn-Rn        Xn-Pn       Xn-Qn\n');


for k=1:11
    fprintf('    %2d       %f     %f     %f\n',k-1,x(k)-r(k),x(k)-p(k),x(k)-q(k));
end

fprintf('\n\n');


% while(true)
%     id=input('��������Ҫ���Ƶ�������еı��(1,2,3):  ');
%     fprintf('\n\n');
%     switch id
%         case 1
            n=0:10;
            subplot(2,1,1);
            plot(n,x-r,'g',n,x-p,'r');
            grid;%�������
            set(gca,'xtick',[0:2:10]);%���ú�����
            legend('Xn-Rn','Xn-Pn',-1);
%             set(gcf,'Color',[0,0,0]);%����ͼ�δ�����ɫ
%             set(gca,'ytick',[0.0:0.1:3.0]);
            % set(gca,'ytick',x-r);
            % set(gca,'yticklabel',str2mat('0.000005','0.000010','0.000015'));
%             xlabel('n');
%             ylabel('Xn-Rn');
%             title('�������{Xn-Rn}');
           
            hold on;
            
%         case 2
%             n=0:10;
%             plot(n,x-p,'r');
           
            
%             set(gca,'xtick',[0:2:10]);
%             xlabel('n');
%             ylabel('Xn-Pn');
%             title('�������{Xn-Pn}');
%             
%         case 3
%             hold on;
            
            n=0:10;  
            subplot(2,1,2);    %ͼ��λ��
            plot(n,x-q,'b');   %����ͼ��
            grid;           %������
            legend('Xn-Qn',-1);  %����ͼ��
%             set(gca,'xtick',[0:2:10]);
%             xlabel('n');
%             ylabel('Xn-Qn');
%             title('�������{Xn-Qn}');
%         otherwise
            
%     end
            
% end

    