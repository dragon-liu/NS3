data = csvread('5_1_600.csv'); % ������ڹ���Ŀ¼���Ǿ�д������·��
x=data(:,1);%x���ϵ�����
y1=data(:,2); %a����yֵ
y2=data(:,3); %a����yֵ
y3=data(:,4); %a����yֵ
y4=data(:,5); %a����yֵ
plot(x,y1,'-*r',x,y2,'-og',x,y3,'-+b',x,y4,'-xc'); %���ԣ���ɫ�����
axis([0,30,10,15])  %ȷ��x����y���ͼ��С
set(gca,'XTick',[0:0.5:30]) 
set(gca,'YTick',[10:1:15]) 
set(gcf,'DefaultAxesFontName','times');
set(gcf,'DefaultAxesFontSize',14);
legend('UE1','UE2','UE3','UE4');
name='CQI-600m-MR';
title(name);   %���ϽǱ�ע
xlabel('time/s')  %x����������
ylabel('CQI') %y����������
print(gcf,'-dpng',name);



