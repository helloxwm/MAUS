fid = fopen('ellipsedata.txt');
data = textscan(fid, '%f %f %f %f %s');
X=data{1,1};
XE=data{1,2};
Y=data{1,3};
YE=data{1,4};
sizeSymbol = 20;
close all;
clear title xlabel ylabel;
%hFigure = figure('Units', 'pixels', 'Position', [100 100 740 440]);
hFigure = figure('Units', 'pixels', 'Position', [100 100 800 400]);
daspect([1,1,1]);
hold on;

%Draw Ellipse
angle = 43.2/180*pi;
%a = 0.912317;
a = 1;
%b = 0.942536;
b = 1;
cx = 0;
cy = 0;
color = [176/255,196/255,222/255];
r=0:0.1:2*pi+0.1;
p=[(a*cos(r))' (b*sin(r))'];
alpha=[cos(angle) -sin(angle)
       sin(angle) cos(angle)];   
p1=p*alpha; 
h0 = patch(cx+p1(:,1),cy+p1(:,2),color,'EdgeColor',color);

% Circle
t = 0 : .1 : 2*pi;
x = 2 * cos(t) + 0;
y = 2 * sin(t) + 0;
ch=plot(x, y,'--');
set(ch,'Color',color);
set(ch,'LineWidth',2);

%hh = hatchfill(h0,'cross',45,40,color);
%set(hh,'color','w','linewidth',1.5)

% Twin_Kwashiorkor
color=[0 0 255/255]; % 9
initIdx=1;
endIdx=16;
%h1 = scatter(X(initIdx:endIdx),Y(initIdx:endIdx),size,color,'filled','MarkerEdgeColor',[0 0 255/255], 'MarkerFaceColor',color);
h1 = scatter(X(initIdx:endIdx),Y(initIdx:endIdx),sizeSymbol,'d','filled','MarkerEdgeColor',[0 0 255/255], 'MarkerFaceColor',color);
h1b = errorbarxy(X(initIdx:endIdx),Y(initIdx:endIdx),XE(initIdx:endIdx),YE(initIdx:endIdx),{'.',color,color});

% Twin_healthy
color=[0/255 255/255 255/255]; % 8
initIdx=17;
endIdx=31;
%h2 = scatter(X(initIdx:endIdx),Y(initIdx:endIdx),size,color,'filled','MarkerEdgeColor',[0 0 0], 'MarkerFaceColor',color);
%h2 = scatter(X(initIdx:endIdx),Y(initIdx:endIdx),'d','filled','MarkerEdgeColor',[0/255 255/255 255/255], 'MarkerFaceColor',color);
%h2b = errorbarxy(X(initIdx:endIdx),Y(initIdx:endIdx),XE(initIdx:endIdx),YE(initIdx:endIdx),{'.',color,color});

% Plant_Diet
color=[0 153/255 76/255]; % 7
initIdx=32;
endIdx= 41;
%h3 = scatter(X(initIdx:endIdx),Y(initIdx:endIdx),size,color,'filled','MarkerEdgeColor',[0 0 0], 'MarkerFaceColor',color)
h3 = scatter(X(initIdx:endIdx),Y(initIdx:endIdx),sizeSymbol,'s','filled','MarkerEdgeColor',[0 153/255 76/255], 'MarkerFaceColor',color);
h3b = errorbarxy(X(initIdx:endIdx),Y(initIdx:endIdx),XE(initIdx:endIdx),YE(initIdx:endIdx),{'.',color,color});

% Animal_Diet
color=[0/255 255/255 0/255]; % 6
initIdx=42;
endIdx=49;
%h4 = scatter(X(initIdx:endIdx),Y(initIdx:endIdx),size,color,'filled','MarkerEdgeColor',[0 0 0], 'MarkerFaceColor',color);
h4 = scatter(X(initIdx:endIdx),Y(initIdx:endIdx),sizeSymbol,'s','filled','MarkerEdgeColor',[0/255 255/255 0/255], 'MarkerFaceColor',color);
h4b = errorbarxy(X(initIdx:endIdx),Y(initIdx:endIdx),XE(initIdx:endIdx),YE(initIdx:endIdx),{'.',color,color});

% OB_II
color=[255/255 255/255 0/255]; % 3; % 5
initIdx= 50;
endIdx= 51;
%h5 = scatter(X(initIdx:endIdx),Y(initIdx:endIdx),size,color,'filled','MarkerEdgeColor',[0 0 0], 'MarkerFaceColor',color);
%h5 = scatter(X(initIdx:endIdx),Y(initIdx:endIdx),'>','filled','MarkerEdgeColor',[255/255 255/255 0/255], 'MarkerFaceColor',color);
%h5b = errorbarxy(X(initIdx:endIdx),Y(initIdx:endIdx),XE(initIdx:endIdx),YE(initIdx:endIdx),{'.',color,color});

% OB_III
color=[255/255 204/255 204/255]; %4
initIdx= 52;
endIdx= 55;
%h6 = scatter(X(initIdx:endIdx),Y(initIdx:endIdx),size,color,'filled','MarkerEdgeColor',[0 0 0], 'MarkerFaceColor',color);
h6 = scatter(X(initIdx:endIdx),Y(initIdx:endIdx),sizeSymbol,'>','filled','MarkerEdgeColor',[255/255 204/255 204/255], 'MarkerFaceColor',color);
h6b = errorbarxy(X(initIdx:endIdx),Y(initIdx:endIdx),XE(initIdx:endIdx),YE(initIdx:endIdx),{'.',color,color});

% OB_III_DIET
color=[204/255 0/255 204/255]; % 3
initIdx=56;
endIdx=58;
%h7 = scatter(X(initIdx:endIdx),Y(initIdx:endIdx),size,color,'filled','MarkerEdgeColor',[0 0 0], 'MarkerFaceColor',color);
h7 = scatter(X(initIdx:endIdx),Y(initIdx:endIdx),sizeSymbol,'>','filled','MarkerEdgeColor',[204/255 0/255 204/255], 'MarkerFaceColor',color);
h7b = errorbarxy(X(initIdx:endIdx),Y(initIdx:endIdx),XE(initIdx:endIdx),YE(initIdx:endIdx),{'.',color,color});

% Antibiotics
color=[255/255 51/255 51/255]; % 2
initIdx=59;
endIdx=64;
h8 = scatter(X(initIdx:endIdx),Y(initIdx:endIdx),sizeSymbol,color,'filled','MarkerEdgeColor',[255/255 51/255 51/255], 'MarkerFaceColor',color);
h8b = errorbarxy(X(initIdx:endIdx),Y(initIdx:endIdx),XE(initIdx:endIdx),YE(initIdx:endIdx),{'.',color,color});

% IBS (SPECIAL DATA PLACEMENT)
color=[0/255 0/255 0/255]; % 1
initIdx= 65;
endIdx= 66;
specialIdx = 66;
X(specialIdx) = X(specialIdx)-7.0; % move data in the figure (custom X-axis labeling required) 
XE(specialIdx) = XE(specialIdx)/2.0; % rescale data in the figure (custom X-axis labeling required) 
h9 = scatter(X(initIdx:endIdx),Y(initIdx:endIdx),sizeSymbol,'p','filled','MarkerEdgeColor',[0/255 0/255 0/255], 'MarkerFaceColor',color);
h9b = errorbarxy(X(initIdx:endIdx),Y(initIdx:endIdx),XE(initIdx:endIdx),YE(initIdx:endIdx),{'w.',color,color});

% HLS_TRIP
color=[255/255 0/255 255/255]; % 
initIdx= 67;
endIdx= 67;
h10 = scatter(X(initIdx:endIdx),Y(initIdx:endIdx),sizeSymbol,'^','filled','MarkerEdgeColor',color, 'MarkerFaceColor',color);
h10b = errorbarxy(X(initIdx:endIdx),Y(initIdx:endIdx),XE(initIdx:endIdx),YE(initIdx:endIdx),{'w.',color,color});

% HLS_SICK
color=[127/255 0/255 255/255]; % 
initIdx= 68;
endIdx= 68;
h11 = scatter(X(initIdx:endIdx),Y(initIdx:endIdx),sizeSymbol,'^','filled','MarkerEdgeColor',color, 'MarkerFaceColor',color);
h11b = errorbarxy(X(initIdx:endIdx),Y(initIdx:endIdx),XE(initIdx:endIdx),YE(initIdx:endIdx),{'w.',color,color});

%hTitle  = title ('Diagram of regions for health and sick members.');
hXLabel = xlabel('Variability (SD units)');
hYLabel = ylabel('Scaling Index (SD units)');
lbl = {'Zone of Health','Kwashiorkor','Plant Diet','Animal Diet','Ob III','Ob III Diet','Antibiotics','IBS','Lifestyle Trip','Lifestyle Sick'};
hLegend = legend([h0 h1 h3 h4 h6 h7 h8 h9 h10 h11],lbl,'Location','southeast');

% Custom X-axis ticks and labeling 
set([hXLabel, hYLabel],'FontName','AvantGarde','FontSize',14);
set(gca, 'Box','on','TickDir','out','TickLength',[.01 .01],'XMinorTick','off','YMinorTick','off','XColor',[.0 .0 .0],'YColor',[.0 .0 .0],'LineWidth',0.4,'FontName','AvantGarde','FontSize',10);
set(gca, 'XTickLabel',{'-2','0','2','4','6','8','10','17','21','25','29'});
%set(gca, 'XTickLabel',{'-2','0','2','4','6','8','13','15','17','19','21','23'});
axis([-2.5 18 -4 6]);
%axis([-2.5 9.5 -4 3.5]);
%axis([-2.5 16 -4 6]);

%--------------------
%start=8.5;
%width=0.5;
%stop=9;
%ytick=get(gca,'YTick');
%t1=text(start+width/2,ytick(1),'//','fontsize',15);
%t2=text(start+width/2,ytick(max(length(ytick))),'//','fontsize',15);
axbreak = 10.5;
ytick=get(gca,'YTick');
t1=text(axbreak,ytick(1),'//','fontsize',15);
t2=text(axbreak,ytick(max(length(ytick))),'//','fontsize',15);
%-------------
        
set(gcf, 'PaperUnits', 'centimeters','PaperPositionMode', 'auto','PaperSize',[20, 40]);

%print(hFigure, '-dpng', '-zbuffer','-r600', 'Fig2.png');
%print(hFigure, 'Fig2.pdf','-dpdf', '-r600', '-bestfit');
print(hFigure, 'Fig2.eps','-depsc2', '-r600');

% set(hFigure, 'PaperUnits','centimeters')
% %set(hFigure, 'PaperSize',[10 10])
% print(hFigure, '-dpng', '-zbuffer','-r600', 'Fig2.png')

fclose(fid);