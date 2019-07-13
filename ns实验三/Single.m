data = csvread('CentripetalPF.csv'); % ������ڹ���Ŀ¼���Ǿ�д������·��
x=data(:,1);%x���ϵ�����
y1=data(:,2); %a����yֵ
y2=data(:,3); %a����yֵ
y3=data(:,4); %a����yֵ
y4=data(:,5); %a����yֵ
plot(x,y1,'-*b',x,y2,'-ok',x,y3,'-+r',x,y4,'-xg'); %���ԣ���ɫ�����
axis([200,1800,0,100])  %ȷ��x����y���ͼ��С
set(gca,'XTick',[200:400:1800]) 
set(gca,'YTick',[0:20:100]) 
set(gcf,'DefaultAxesFontName','times');
set(gcf,'DefaultAxesFontSize',14);
legend('UE1','UE2','UE3','UE4');
name='CentripetalPF-UEthroughput';
title(name);   %���ϽǱ�ע
xlabel('�뾶/��')  %x����������
ylabel('������/Mbps') %y����������
print(gcf,'-dpng',name);