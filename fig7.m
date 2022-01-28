close all
PDF=[];CDF=[];
for bbeta=[1 3 5 7]
    dim=3;
    int_R=quadgk(@(s)(1-chi2cdf((bbeta./cos(s)).^2,dim)).*sin(s).^(dim-2),0,pi/2);
    PDF_fun = @(s)(1-chi2cdf((bbeta./cos(s)).^2,dim)).*sin(s).^(dim-2)./int_R;
    CDF_fun = @(x) quadgk(@(s) PDF_fun(s) ,0, x );  
    step = 0:0.01:pi/2;  
    CDF_R=arrayfun(@(x) CDF_fun(x),step);
    PDF_R=arrayfun(@(x) PDF_fun(x),step);
    PDF=[PDF;PDF_R];CDF=[CDF;CDF_R];
end
figure(1)
f1=plot(step,PDF',...
    'MarkerEdgeColor','k','MarkerFaceColor','k','LineWidth',1.5);
set(gca,'xtick',0:0.157:1.57, 'xticklabel',0:9:90,...
    'ytick',0:1:6,'ycolor','k',...
    'LineWidth',1.5,'LabelFontSizeMultiplier',1) 
set(f1(1),'color','r','Marker','o','MarkerSize',5,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerIndices',ceil(linspace(1,length(step),15)));
set(f1(2),'color','b','Marker','s','MarkerSize',6,'MarkerEdgeColor','b','MarkerFaceColor','b','MarkerIndices',ceil(linspace(1,length(step),15)));
set(f1(3),'color',[1 0.5 0],'Marker','p','MarkerSize',4,'MarkerEdgeColor',[1 0.5 0],'MarkerFaceColor',[1 0.5 0],'MarkerIndices',ceil(linspace(1,length(step),15)));
set(f1(4),'color','k','Marker','^','MarkerSize',5,'MarkerEdgeColor','k','MarkerFaceColor','k','MarkerIndices',ceil(linspace(1,length(step),15)));
axis([0,1.57 0 6])
set(gca,'position',[0.12,0.15,0.85,0.8],...
   'xtick',0:0.157:1.57, 'xticklabel',0:9:90,'ytick',0:1:7,'ycolor','k',...
    'FontName','Times new roman','FontSize',14,'LineWidth',1.5,'LabelFontSizeMultiplier',1) 
box off
legend('$\beta=1$','$\beta=3$','$\beta=5$','$\beta=7$',...
    'FontName','Times new roman',...
    'NumColumns',1,'LineWidth',1.5,'Location','northeast','FontSize',14,'interpreter','latex');
xlabel('Angle/($^{\circ}$)','Color','k','interpreter','latex');
ylabel('PDF','Color','k');
set(gcf,'unit','centimeters','color','w','position',[5 15 12 10]);
figure(2)
f1=plot(step,CDF',...
    'MarkerEdgeColor','k','MarkerFaceColor','k','LineWidth',1.5);
hold on
plot([0 90],[1 1],'k--','LineWidth',1.5)
for i=1:size(CDF)
    [~,Index(i)] = min(abs(CDF(i,:)-0.999));
end
plot([step(Index(1)) step(Index(1))],[0 1],'r--','LineWidth',1.5) 
plot([step(Index(2)) step(Index(2))],[0 1],'b--','LineWidth',1.5)  
plot([step(Index(3)) step(Index(3))],[0 1],'--','color',[1 0.5 0],'LineWidth',1.5)  
plot([step(Index(4)) step(Index(4))],[0 1],'k--','LineWidth',1.5)  
hold off
set(f1(1),'color','r','Marker','o','MarkerSize',5,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerIndices',ceil(linspace(1,length(step),15)));
set(f1(2),'color','b','Marker','s','MarkerSize',6,'MarkerEdgeColor','b','MarkerFaceColor','b','MarkerIndices',ceil(linspace(1,length(step),15)));
set(f1(3),'color',[1 0.5 0],'Marker','p','MarkerSize',4,'MarkerEdgeColor',[1 0.5 0],'MarkerFaceColor',[1 0.5 0],'MarkerIndices',ceil(linspace(1,length(step),15)));
set(f1(4),'color','k','Marker','^','MarkerSize',5,'MarkerEdgeColor','k','MarkerFaceColor','k','MarkerIndices',ceil(linspace(1,length(step),15)));
axis([0,1.57 0 1.4])
set(gca,'position',[0.12,0.15,0.85,0.8],...
   'xtick',0:0.157:1.57, 'xticklabel',0:9:90,'ytick',0:0.2:1.4,'ycolor','k',...
    'FontName','Times new roman','FontSize',14,'LineWidth',1.5,'LabelFontSizeMultiplier',1)                                      
box off
legend('$\beta=1$','$\beta=3$','$\beta=5$','$\beta=7$',...
    'FontName','Times new roman',...
    'NumColumns',2,'LineWidth',1.5,'Location','northeast','FontSize',14,'interpreter','latex');
xlabel('Angle/($^{\circ}$)','Color','k','interpreter','latex');
ylabel('CDF','Color','k');
set(gcf,'unit','centimeters','color','w','position',[23 15 12 10]);
PDF=[];CDF=[];
for dim=[2 3 5 10 15 20]
    bbeta=3;
    int_R=quadgk(@(s)(1-chi2cdf((bbeta./cos(s)).^2,dim)).*sin(s).^(dim-2),0,pi/2);
    PDF_fun = @(s)(1-chi2cdf((bbeta./cos(s)).^2,dim)).*sin(s).^(dim-2)./int_R;
    CDF_fun = @(x) quadgk(@(s) PDF_fun(s) ,0, x );  
    step = 0:0.01:pi/2;  
    CDF_R=arrayfun(@(x) CDF_fun(x),step);
    PDF_R=arrayfun(@(x) PDF_fun(x),step);
    PDF=[PDF;PDF_R];CDF=[CDF;CDF_R];
end
figure(3)
f1=plot(step,PDF',...
    'MarkerEdgeColor','k','MarkerFaceColor','k','LineWidth',1.5);
set(gca,'xtick',0:0.157:1.57, 'xticklabel',0:9:90,... 
    'ytick',0:1:5,'ycolor','k',...
    'LineWidth',1.5,'LabelFontSizeMultiplier',1)                                       
set(f1(1),'color','r','Marker','o','MarkerSize',5,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerIndices',ceil(linspace(1,length(step),15)));
set(f1(2),'color','b','Marker','s','MarkerSize',6,'MarkerEdgeColor','b','MarkerFaceColor','b','MarkerIndices',ceil(linspace(1,length(step),15)));
set(f1(3),'color',[1 0.5 0],'Marker','p','MarkerSize',4,'MarkerEdgeColor',[1 0.5 0],'MarkerFaceColor',[1 0.5 0],'MarkerIndices',ceil(linspace(1,length(step),15)));
set(f1(4),'color','m','Marker','^','MarkerSize',5,'MarkerEdgeColor','m','MarkerFaceColor','m','MarkerIndices',ceil(linspace(1,length(step),15)));
set(f1(5),'color',[0 0.75 1],'Marker','+','MarkerSize',6,'MarkerEdgeColor',[0 0.75 1],'MarkerFaceColor',[0 0.75 1],'MarkerIndices',ceil(linspace(1,length(step),15)));
set(f1(6),'color','k','Marker','d','MarkerSize',5,'MarkerEdgeColor','k','MarkerFaceColor','k','MarkerIndices',ceil(linspace(1,length(step),15)));
axis([0,1.57 0 5])
set(gca,'position',[0.12,0.15,0.85,0.8],...
   'xtick',0:0.157:1.57, 'xticklabel',0:9:90,'ytick',0:1:5,'ycolor','k',...
    'FontName','Times new roman','FontSize',14,'LineWidth',1.5,'LabelFontSizeMultiplier',1)                                    
box off
legend('$n=2$','$n=3$','$n=5$','$n=10$','$n=15$','$n=20$',...
    'FontName','Times new roman','interpreter','latex',...
    'NumColumns',1,'LineWidth',1.5,'Location','northeast','FontSize',14);
xlabel('Angle/($^{\circ}$)','Color','k','interpreter','latex');
ylabel('PDF','Color','k');
set(gcf,'unit','centimeters','color','w','position',[5 2 12 10]);
figure(4)
f1=plot(step,CDF',...
    'MarkerEdgeColor','k','MarkerFaceColor','k','LineWidth',1.5);
hold on
plot([0 90],[1 1],'k--','LineWidth',1.5)
hold off
set(gca,'xtick',0:0.157:1.57, 'xticklabel',0:9:90,... 
    'ytick',0:1:5,'ycolor','k',...
    'LineWidth',1.5,'LabelFontSizeMultiplier',1)                                         
set(f1(1),'color','r','Marker','o','MarkerSize',5,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerIndices',ceil(linspace(1,length(step),15)));
set(f1(2),'color','b','Marker','s','MarkerSize',6,'MarkerEdgeColor','b','MarkerFaceColor','b','MarkerIndices',ceil(linspace(1,length(step),15)));
set(f1(3),'color',[1 0.5 0],'Marker','p','MarkerSize',4,'MarkerEdgeColor',[1 0.5 0],'MarkerFaceColor',[1 0.5 0],'MarkerIndices',ceil(linspace(1,length(step),15)));
set(f1(4),'color','m','Marker','^','MarkerSize',5,'MarkerEdgeColor','m','MarkerFaceColor','m','MarkerIndices',ceil(linspace(1,length(step),15)));
set(f1(5),'color',[0 0.75 1],'Marker','+','MarkerSize',6,'MarkerEdgeColor',[0 0.75 1],'MarkerFaceColor',[0 0.75 1],'MarkerIndices',ceil(linspace(1,length(step),15)));
set(f1(6),'color','k','Marker','d','MarkerSize',5,'MarkerEdgeColor','k','MarkerFaceColor','k','MarkerIndices',ceil(linspace(1,length(step),15)));
axis([0,1.57 0 1.4])
set(gca,'position',[0.12,0.15,0.85,0.8],...
   'xtick',0:0.157:1.57, 'xticklabel',0:9:90,'ytick',0:0.2:1.4,'ycolor','k',...
    'FontName','Times new roman','FontSize',14,'LineWidth',1.5,'LabelFontSizeMultiplier',1)                             
box off
legend('$n=2$','$n=3$','$n=5$','$n=10$','$n=15$','$n=20$',...
    'FontName','Times new roman',...
    'NumColumns',3,'LineWidth',1.5,'Location','northeast','FontSize',14,'interpreter','latex');
xlabel('Angle/($^{\circ}$)','Color','k','interpreter','latex');
ylabel('CDF','Color','k');
set(gcf,'unit','centimeters','color','w','position',[23 2 12 10]);
