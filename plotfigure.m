clc
clear all
close all

data=importdata('data.xlsx'); 
data=data.data;
data=data.Blad2;

np = data(1,:);

tma_aas = data(9,:);
taf_aas = data(10,:);

tma_pas = data(13,:);
taf_pas = data(14,:);

tma_ana = data(17,:);
taf_ana = data(18,:);



% plot properties 
linewidth = 2.5;
fontsize = 16;
markersize = 120;


figure(1)
plot(1:10,10*ones(10,1),'k--')
hold on
h1 = scatter(np, tma_aas, markersize,'b','filled','s'); %,'LineWidth',6);
line(np, tma_aas,'LineStyle','-','LineWidth',linewidth-1,'Color','b');

h2 = scatter(np, taf_aas, markersize,'r','filled','^');
line(np, taf_aas,'LineStyle','-','LineWidth',linewidth-1,'Color','r');      

h3 = plot(np,tma_ana,'b:','LineWidth',linewidth);
h4 = plot(np,taf_ana,'r:','LineWidth',linewidth);


set(gca,'XMinorTick','on','YMinorTick','on');
set(gca,'LineWidth',linewidth/2,'FontSize',fontsize);

axs = gca;
% axs.XTick = [3 5 7 9];    % or more decently
set(gca,'XTick',3:2:9);
axs.XRuler.MinorTick = 2:1:10;


set(gca,'YLim',[0 60]);
set(gca,'XLim',[2 10]);

xlabel('Number of Persons','FontSize',fontsize-1,'FontWeight','bold','Color','k');
ylabel('CFU / m^3','FontSize',fontsize-1,'FontWeight','bold','Color','k');

box on

% Generate dummy info for plot handles to create legend markers
h1 = plot(-1,-1,'-bs','LineWidth',1.5,'MarkerEdgeColor','b','MarkerFaceColor','b')
h2 = plot(-1,-1,'-r^','LineWidth',1.5,'MarkerEdgeColor','r','MarkerFaceColor','r')
h3 = plot(-1,-1,'b:','LineWidth',1.5,'MarkerEdgeColor','b','MarkerFaceColor','b')
h4 = plot(-1,-1,'r:','LineWidth',1.5,'MarkerEdgeColor','r','MarkerFaceColor','r')

h = legend([h1 h2 h3 h4], ' TMA - simulation',' TAF - simulation',' TMA - analytical',' TAF - analytical','Location','northwest');
% h.FontSize = 12; % or in a more decent way
set(h,'FontSize',12);
% set(h,'Position',[0.25 0.5 0.25 0.25]);   % directly set the legend position

figure(2)
plot(1:10,350*ones(10,1),'k--')
hold on
h1 = scatter(np, tma_pas, markersize,'b','filled','s'); %,'LineWidth',6);
line(np, tma_pas,'LineStyle','-','LineWidth',linewidth-1,'Color','b');

h2 = scatter(np, taf_pas, markersize,'r','filled','^');
line(np, taf_pas,'LineStyle','-','LineWidth',linewidth-1,'Color','r');     

set(gca,'XMinorTick','on','YMinorTick','on');
set(gca,'LineWidth',linewidth/2,'FontSize',fontsize);

axs = gca;
% axs.XTick = [3 5 7 9];    % or more decently
set(gca,'XTick',3:2:9);
axs.XRuler.MinorTick = 2:1:10;


set(gca,'YLim',[0 1000]);
set(gca,'XLim',[2 10]);

xlabel('Number of Persons','FontSize',fontsize-1,'FontWeight','bold','Color','k');
ylabel('CFU / m^3','FontSize',fontsize-1,'FontWeight','bold','Color','k');

box on

% Generate dummy info for plot handles to create legend markers
h1 = plot(-1,-1,'-bs','LineWidth',1.5,'MarkerEdgeColor','b','MarkerFaceColor','b')
h2 = plot(-1,-1,'-r^','LineWidth',1.5,'MarkerEdgeColor','r','MarkerFaceColor','r')

h = legend([h1 h2 h3 h4], ' TMA - simulation',' TAF - simulation',' TMA - analytical',' TAF - analytical','Location','northwest');
% h.FontSize = 12; % or in a more decent way
set(h,'FontSize',12);
% set(h,'Position',[0.25 0.5 0.25 0.25]);   % directly set the legend position
