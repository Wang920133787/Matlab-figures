close all

figure(1)
a=[ 0.2 1;
    1.2 2;
    2.2 3;
    3.2 4;
    4.2 5;
    5.2 6;
    6.2 7];
b=[ 20.29	26.36;
    22.93	23.68;
    22.71	23.89;
    23.13	23.47;
     22.14 24.57;
    23.09	23.51;
    23.57 23.06];
for i=1:7
h(i) = subplot(1,7,i);
plot(a(i,:) ,b(i,:) ,'k','LineWidth',1.5);
axis([i-1 i+0.2 20 28])
if i==1
set(h(i) ,'position',[0.1+(i-1)*0.12,0.18,0.11,0.8]);
else
set(h(i) ,'position',[0.1+(i-1)*0.12,0.18,0.11,0.8],'yticklabel',[]);
end
end
set(h(1),'xtick',a(1,:),'xticklabel',[22.7,23.3],'ytick',20:2:28,'FontName','Times new roman','FontSize',12,'LineWidth',1.2,'LabelFontSizeMultiplier',1);
set(h(2),'xtick',a(2,:),'xticklabel',[22.7,23.3],'ytick',20:2:28,'FontName','Times new roman','FontSize',12,'LineWidth',1.2,'LabelFontSizeMultiplier',1);
set(h(3),'xtick',a(3,:),'xticklabel',[22.7,23.3],'ytick',20:2:28,'FontName','Times new roman','FontSize',12,'LineWidth',1.2,'LabelFontSizeMultiplier',1);
set(h(4),'xtick',a(4,:),'xticklabel',[22.7,23.3],'ytick',20:2:28,'FontName','Times new roman','FontSize',12,'LineWidth',1.2,'LabelFontSizeMultiplier',1);
set(h(5),'xtick',a(5,:),'xticklabel',{'1.99e5','2.11e5'},'ytick',20:2:28,'FontName','Times new roman','FontSize',12,'LineWidth',1.2,'LabelFontSizeMultiplier',1);
set(h(6),'xtick',a(6,:),'xticklabel',[0.27,0.33],'ytick',20:2:28,'FontName','Times new roman','FontSize',12,'LineWidth',1.2,'LabelFontSizeMultiplier',1);
set(h(7),'xtick',a(7,:),'xticklabel',{'2.6e4','3.2e4'},'ytick',20:2:28,'FontName','Times new roman','FontSize',12,'LineWidth',1.2,'LabelFontSizeMultiplier',1);
% 
% set(h(1),'xtick',sum(a(1,:))/2,'xticklabel',23,'ytick',20:2:30,'FontName','Times new roman','FontSize',12,'LineWidth',1.2,'LabelFontSizeMultiplier',1);
% set(h(2),'xtick',sum(a(2,:))/2,'xticklabel',23,'ytick',20:2:30,'FontName','Times new roman','FontSize',12,'LineWidth',1.2,'LabelFontSizeMultiplier',1);
% set(h(3),'xtick',sum(a(3,:))/2,'xticklabel',23,'ytick',20:2:30,'FontName','Times new roman','FontSize',12,'LineWidth',1.2,'LabelFontSizeMultiplier',1);
% set(h(4),'xtick',sum(a(4,:))/2,'xticklabel',1.5,'ytick',20:2:30,'FontName','Times new roman','FontSize',12,'LineWidth',1.2,'LabelFontSizeMultiplier',1);
% set(h(5),'xtick',sum(a(5,:))/2,'xticklabel',2.05e5,'ytick',20:2:30,'FontName','Times new roman','FontSize',12,'LineWidth',1.2,'LabelFontSizeMultiplier',1);
% set(h(6),'xtick',sum(a(6,:))/2,'xticklabel',0.3,'ytick',20:2:30,'FontName','Times new roman','FontSize',12,'LineWidth',1.2,'LabelFontSizeMultiplier',1);
% set(h(7),'xtick',sum(a(7,:))/2,'xticklabel',2.94e4,'ytick',20:2:30,'FontName','Times new roman','FontSize',12,'LineWidth',1.2,'LabelFontSizeMultiplier',1);
xlabel(h(1),'${\it t}_1/\rm(mm)$','interpreter','latex','FontName','Times new roman','position',[0.6 18.75 -1]);%',
xlabel(h(2),'${\it t}_2/\rm(mm)$','interpreter','latex','FontName','Times new roman','position',[1.6 18.75 -1]);
xlabel(h(3),'${\it t}_3/\rm(mm)$','interpreter','latex','FontName','Times new roman','position',[2.6 18.75 -1]);
xlabel(h(4),'${\it t}_4/\rm(mm)$','interpreter','latex','FontName','Times new roman','position',[3.6 18.75 -1]);
xlabel(h(5),'${\it E}/\rm(MPa)$','interpreter','latex','FontName','Times new roman','position',[4.6 18.75 -1]);
xlabel(h(6),'${\it \mu}$','interpreter','latex','FontName','Times new roman','position',[5.6 18.75 -1]);
xlabel(h(7),'${\it G}_{\rm a}/\rm(mm/s^2)$','interpreter','latex','FontName','Times new roman','position',[6.6 18.75 -1]);
ylabel(h(1),'\fontname{Times new roman}Frequency/(Hz)');

linkaxes([h(1),h(2),h(3),h(4),h(5),h(6),h(7)],'y')
set(gcf,'unit','centimeters','color','w','position',[5 10 14 11]);


figure(2)
c=[ 0.2 1;
    1.2 2;
    2.2 3;
    3.2 4;
    4.2 5;
    5.2 6;
    6.2 7];
d=[ 228.233 180.469;
    223.09 185.9;
    234.606 174.565;
    201.723 207.343;
    212.975 195.304;
    201.408 207.632;
    132.943 269.792];

for i=1:7
h(i) = subplot(1,7,i);
plot(c(i,:) ,d(i,:) ,'k','LineWidth',1.5);
axis([i-1 i+0.2 120 280])
if i==1
set(h(i) ,'position',[0.1+(i-1)*0.12,0.18,0.11,0.8]);
else
set(h(i) ,'position',[0.1+(i-1)*0.12,0.18,0.11,0.8],'yticklabel',[]);
end
end
% set(h(1),'xtick',a(1,:),'xticklabel',[22.7,23.3],'ytick',120:30:300,'FontName','Times new roman','FontSize',12,'LineWidth',1.5,'LabelFontSizeMultiplier',1);
% set(h(2),'xtick',a(2,:),'xticklabel',[22.7,23.3],'FontName','Times new roman','FontSize',12,'LineWidth',1.5,'LabelFontSizeMultiplier',1);
% set(h(3),'xtick',a(3,:),'xticklabel',[22.7,23.3],'FontName','Times new roman','FontSize',12,'LineWidth',1.5,'LabelFontSizeMultiplier',1);
% set(h(4),'xtick',a(4,:),'xticklabel',[1.2,1.8],'FontName','Times new roman','FontSize',12,'LineWidth',1.5,'LabelFontSizeMultiplier',1);
% set(h(5),'xtick',a(5,:),'xticklabel',[1.99e5,2.11e5],'FontName','Times new roman','FontSize',12,'LineWidth',1.5,'LabelFontSizeMultiplier',1);
% set(h(6),'xtick',a(6,:),'xticklabel',[0.27,0.33],'FontName','Times new roman','FontSize',12,'LineWidth',1.5,'LabelFontSizeMultiplier',1);
% set(h(7),'xtick',a(7,:),'xticklabel',[2.64e4,3.23e4],'FontName','Times new roman','FontSize',12,'LineWidth',1.5,'LabelFontSizeMultiplier',1);
set(h(1),'xtick',c(1,:),'xticklabel',[22.7,23.3],'ytick',120:20:280,'FontName','Times new roman','FontSize',12,'LineWidth',1.2,'LabelFontSizeMultiplier',1);
set(h(2),'xtick',c(2,:),'xticklabel',[22.7,23.3],'ytick',120:20:280,'FontName','Times new roman','FontSize',12,'LineWidth',1.2,'LabelFontSizeMultiplier',1);
set(h(3),'xtick',c(3,:),'xticklabel',[22.7,23.3],'ytick',120:20:280,'FontName','Times new roman','FontSize',12,'LineWidth',1.2,'LabelFontSizeMultiplier',1);
set(h(4),'xtick',c(4,:),'xticklabel',[22.7,23.3],'ytick',120:20:280,'FontName','Times new roman','FontSize',12,'LineWidth',1.2,'LabelFontSizeMultiplier',1);
set(h(5),'xtick',c(5,:),'xticklabel',{'1.99e5','2.11e5'},'ytick',120:20:280,'FontName','Times new roman','FontSize',12,'LineWidth',1.2,'LabelFontSizeMultiplier',1);
set(h(6),'xtick',c(6,:),'xticklabel',[0.27,0.33],'ytick',120:20:280,'FontName','Times new roman','FontSize',12,'LineWidth',1.2,'LabelFontSizeMultiplier',1);
set(h(7),'xtick',c(7,:),'xticklabel',{'2.6e4','3.2e4'},'ytick',120:20:280,'FontName','Times new roman','FontSize',12,'LineWidth',1.2,'LabelFontSizeMultiplier',1);

% set(h(1),'xtick',sum(c(1,:))/2,'xticklabel',23,'ytick',120:20:280,'FontName','Times new roman','FontSize',12,'LineWidth',1.2,'LabelFontSizeMultiplier',1);
% set(h(2),'xtick',sum(c(2,:))/2,'xticklabel',23,'ytick',120:20:280,'FontName','Times new roman','FontSize',12,'LineWidth',1.2,'LabelFontSizeMultiplier',1);
% set(h(3),'xtick',sum(c(3,:))/2,'xticklabel',23,'ytick',120:20:280,'FontName','Times new roman','FontSize',12,'LineWidth',1.2,'LabelFontSizeMultiplier',1);
% set(h(4),'xtick',sum(c(4,:))/2,'xticklabel',1.5,'ytick',120:20:280,'FontName','Times new roman','FontSize',12,'LineWidth',1.2,'LabelFontSizeMultiplier',1);
% set(h(5),'xtick',sum(c(5,:))/2,'xticklabel',2.05e5,'ytick',120:20:280,'FontName','Times new roman','FontSize',12,'LineWidth',1.2,'LabelFontSizeMultiplier',1);
% set(h(6),'xtick',sum(c(6,:))/2,'xticklabel',0.3,'ytick',120:20:280,'FontName','Times new roman','FontSize',12,'LineWidth',1.2,'LabelFontSizeMultiplier',1);
% set(h(7),'xtick',sum(c(7,:))/2,'xticklabel',2.94e4,'ytick',120:20:280,'FontName','Times new roman','FontSize',12,'LineWidth',1.2,'LabelFontSizeMultiplier',1);
xlabel(h(1),'${\it t}_1/\rm(mm)$','interpreter','latex','FontName','Times new roman','position',[0.6 95 -1]);%',
xlabel(h(2),'${\it t}_2/\rm(mm)$','interpreter','latex','FontName','Times new roman','position',[1.6 95 -1]);
xlabel(h(3),'${\it t}_3/\rm(mm)$','interpreter','latex','FontName','Times new roman','position',[2.6 95 -1]);
xlabel(h(4),'${\it t}_4/\rm(mm)$','interpreter','latex','FontName','Times new roman','position',[3.6 95 -1]);
xlabel(h(5),'${\it E}/\rm(MPa)$','interpreter','latex','FontName','Times new roman','position',[4.6 95 -1]);
xlabel(h(6),'${\it \mu}$','interpreter','latex','FontName','Times new roman','position',[5.6 95 -1]);
xlabel(h(7),'${\it G}_{\rm a}/\rm(mm/s^2)$','interpreter','latex','FontName','Times new roman','position',[6.6 95 -1]);
ylabel(h(1),'\fontname{Times new roman}Stress/(MPa)');

linkaxes([h(1),h(2),h(3),h(4),h(5),h(6),h(7)],'y')
set(gcf,'unit','centimeters','color','w','position',[25 10 14 11]);

% print(gcf, '-djpeg', '-r600', 'C:\Users\Administrator.DESKTOP-AKT8J8S\Desktop\matlab_fig\线性拟合') %'-dpng'

% figure(1)
% plot([0.2 1] ,[228.233	180.469],'r',[1.2 2] ,[223.09	185.9],'g',...
%         [2.2 3] ,[234.606	174.565],'b',[3.2 4] ,[201.723	207.343],'m',...
%         [4.2 5] ,[201.408	207.632],'k',[5.2 6] ,[212.975	195.304],'c',...
%         'LineWidth',1.5);
%     hold on
%     plot([6.2 7] ,[132.943	269.792],'Color',[1 0.5 0],'LineWidth',1.5.5)
%      for i=1:6
%     plot([i+0.1 0.1+i] ,[120 300],'k-','LineWidth',1.5)
%      end
%     hold off    
% box on
% legend('Effect:$t_1$','Effect:$t_2$','Effect:$t_3$','Effect:$t_4$',...
%   'Effect:$\mu$','Effect:$E$', 'Effect:$G_a$',...
%     'interpreter','latex','FontName','Times new roman',...
%     'NumColumns',2,'LineWidth',1.5.5,'position',[0.4238 0.6798 0.4804 0.2440],...
%    'FontSize',12);
% ylabel('Stress /(MPa)','Color','k');
% axis([0 7 120 300])
% set(gca,'position',[0.13,0.1,0.83,0.85],...
%     'xtick',[], 'xticklabel',[],'ytick',120:20:300,'ycolor','k',...
%     'FontName','Times new roman','FontSize',12,'LineWidth',1.5,'LabelFontSizeMultiplier',1) 
% set(gcf,'unit','centimeters','color','w','position',[5 1 14 11]);
% 
% figure(2)
% plot([0.2 1] ,[20.29	26.36],'r',[1.2 2] ,[22.93	23.68],'g',...
%         [2.2 3] ,[22.71	23.89],'b',[3.2 4] ,[23.13	23.47],'m',...
%         [4.2 5] ,[23.09	23.51],'k',[5.2 6] ,[22.14 24.57],'c',...
%        'LineWidth',1.5.5);
%     hold on
%     plot([6.2 7] ,[23.57 23.06],'Color',[1 0.5 0],'LineWidth',1.5.5)
%     hold off
% box off
% legend('Effect:$t_1$','Effect:$t_2$','Effect:$t_3$','Effect:$t_4$',...
%   'Effect:$\mu$','Effect:$E$', 'Effect:$G_a$',...
%     'interpreter','latex','FontName','Times new roman',...
%     'NumColumns',2,'LineWidth',1.5.5,...
%    'position',[0.4238 0.6798 0.4804 0.2440],'FontSize',12);
% ylabel('Frequency/(Hz)','Color','k');
% axis([0 7 20 29])
% set(gca,'position',[0.13,0.1,0.83,0.85],...
%     'xtick',[], 'xticklabel',[],'ytick',20:1:29,'ycolor','k',...
%     'FontName','Times new roman','FontSize',12,'LineWidth',1.5.5,'LabelFontSizeMultiplier',1) 
% set(gcf,'unit','centimeters','color','w','position',[5 15 14 11]);