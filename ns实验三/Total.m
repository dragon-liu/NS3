data1 = csvread('6nodePF.csv'); % ������ڹ���Ŀ¼���Ǿ�д������·��
x=data1(:,1);%x���ϵ�����
y1=data1(:,10); %a����yֵ
data2 = csvread('6nodeRR.csv'); % ������ڹ���Ŀ¼���Ǿ�д������·��
y2=data2(:,10); %a����yֵ
data3 = csvread('6nodeMR.csv'); % ������ڹ���Ŀ¼���Ǿ�д������·��
y3=data3(:,10); %a����yֵ
h=plot(x,y1,'-*b',x,y2,'-ok',x,y3,'-+r');  %���ԣ���ɫ�����
axis([400,1200,0,500])  %ȷ��x����y���ͼ��С
set(gca,'XTick',[400:200:1200]) 
set(gca,'YTick',[0:100:500]) 
set(gcf,'DefaultAxesFontName','times');
set(gcf,'DefaultAxesFontSize',14);
legend([h(1),h(2),h(3)],'PF','RR','MR');
name='SumThroughput';
title(name);   %���ϽǱ�ע
xlabel('distance/m')  %x����������
ylabel('Throughput/Mbps') %y����������
print(gcf,'-dpng',name);

