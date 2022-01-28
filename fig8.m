close all
figure(1)
dim=3;bbeta=3;Sample=10;
        int_R=quadgk(@(s)(1-chi2cdf((bbeta./cos(s)).^2,dim)).*sin(s).^(dim-2),0,pi/2);
  
        PDF_fun = @(s)(1-chi2cdf((bbeta./cos(s)).^2,dim)).*sin(s).^(dim-2)./int_R;
        CDF_fun = @(x) quadgk(@(s) PDF_fun(s) ,0, x );  
       
        step = 0:0.001:pi/2; 
        CDF_R=arrayfun(@(x) CDF_fun(x),step);
        PDF_R=arrayfun(@(x) PDF_fun(x),step);
CDF_uni=sort(lhsdesign(Sample,1,'smooth','off'));
for i=1:Sample
    [~,Index(i)] = min(abs(CDF_R-CDF_uni(i)));
end
step = 0:0.001:pi/2;
Radians= step(Index);

Qx1=arrayfun(@(x) CDF_fun(x),Radians);
qx1=arrayfun(@(x) PDF_fun(x),Radians);

yyaxis left
pot1=plot(step,PDF_R,'k-','MarkerSize',5,...
    'MarkerEdgeColor','k','MarkerFaceColor','k','LineWidth',1.5);
hold on
pot2=plot(Radians,qx1,'ko','MarkerSize',5,...
    'MarkerEdgeColor','k','MarkerFaceColor','k','LineWidth',1.5);
hold off
set(gca,'xtick',0:0.157:1.57, 'xticklabel',0:9:90,...
    'ytick',0:0.4:2.4,'ycolor','k',...
    'LineWidth',1.5,'LabelFontSizeMultiplier',1) 

ylabel('PDF','Color','k');
axis([0,1.57 0 2.4])

yyaxis right
pot3=plot(step,CDF_R,'r-','LineWidth',1.5,...
    'MarkerSize',6,'MarkerFaceColor','r');
hold on
pot4=plot(Radians,Qx1,'ro','MarkerSize',5,...
    'MarkerEdgeColor','r','MarkerFaceColor','r','LineWidth',1.5);
for i = 1:length(Radians)
    plot([Radians(i) 90], [Qx1(i) Qx1(i)], 'b--')
end
hold off
set(gca,'position',[0.12,0.15,0.75,0.8],...
   'xtick',0:0.157:1.57, 'xticklabel',0:9:90,'ytick',0:0.1:1.2,'ycolor','r',...
    'FontName','Times new roman','FontSize',14,'LineWidth',1.5,'LabelFontSizeMultiplier',1) %坐  ,'FontSize',14                                                %gcf表示返回当前Figure对象。
box off
legend([pot1,pot3],'PDF','CDF','FontName','Times new roman',...
    'NumColumns',2,'LineWidth',1.5,'Location','northeast','FontSize',14);

xlabel('Angle/($^{\circ}$)','Color','k','interpreter','latex');
ylabel('CDF','Color','k');
axis([0,1.57 0 1.2])
set(gcf,'unit','centimeters','color','w','position',[5 15 12 10]);
