data = csvread('CentripetalPF.csv'); % ������ڹ���Ŀ¼���Ǿ�д������·��
x=data(:,1);%x���ϵ�����
y1=data(:,6); %a����yֵ
plot(x,y1,'-*b'); %���ԣ���ɫ�����
axis([200,1800,0,400])  %ȷ��x����y���ͼ��С
set(gca,'XTick',[200:400:1800]) 
set(gca,'YTick',[0:100:400]) 
set(gcf,'DefaultAxesFontName','times');
set(gcf,'DefaultAxesFontSize',14);
name='SumThroughput';
title(name);   %���ϽǱ�ע
xlabel('�뾶/��')  %x����������
ylabel('������/Mbps') %y����������
print(gcf,'-dpng',name);