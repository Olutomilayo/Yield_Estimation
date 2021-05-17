clear all; close all;

%load the file to plot in matrix format (e.g. ab)
load ab.mat

lnstyl=['- +r';'--*b';'- ^g';'--oc';'- dk';'--+m';'- *y';'- ^b';'- oc';'--dr'];
for i=1:length(ab) 
    plot(1:5,ab(:,i),lnstyl(i,1:3),'markersize',4,'color',lnstyl(i,4)); 
    hold on; 
end
xlim([1 size(ab,1)])
set(gca,'xtick',1:size(ab,1),'xticklabel',{'10-10';'20-20';'30-40';'40-80';'50-160'})
h12={'Ant','Bat','Bee','Cuckoo','Elephant','Firefly','Flower','GA','Rhinoceros','Wolf'};
set(gca,'fontname','Century','linewidth',1.0,'fontsize',12)
legend(h12,'fontname','Century','fontsize',8,'linewidth',0.7,'location','best')
xlabel('No of iteration - Population size')
ylabel('Time (mins)')

print('Timecomplexity','-dpng','-r900')



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure; 
for i=1:length(ab)-1 
    plot(1:5,ab(:,i),lnstyl(i,1:3),'markersize',4,'color',lnstyl(i,4)); 
    hold on; 
end
xlim([1 size(ab,1)])
set(gca,'xtick',1:size(ab,1),'xticklabel',{'10-10';'20-20';'30-40';'40-80';'50-160'})
h12={'Ant','Bat','Bee','Cuckoo','Elephant','Firefly','Flower','GA','Rhinoceros'};
set(gca,'fontname','Century','linewidth',1.0,'fontsize',12)
legend(h12,'fontname','Century','fontsize',8,'linewidth',0.7,'location','best')
xlabel('No of iteration - Population size')
ylabel('Time (mins)')

print('Timecomplexity2','-dpng','-r900')