dataset = readtable('results_aggregate.csv');
dataset_aggr = readtable('results_aggregate_global.csv');



binari_aggr = dataset_aggr(dataset_aggr{:,3} == 2,:);
ternari_aggr = dataset_aggr(dataset_aggr{:,3} ==3,:);
quaternari_aggr = dataset_aggr(dataset_aggr{:,3} == 4,:);

binari = dataset(dataset{:,4} == 2,:);
ternari = dataset(dataset{:,4} ==3,:);
quaternari = dataset(dataset{:,4} == 4,:);


binari_dens04 = binari(binari{:,3} == 0.4,:);
binari_dens03 = binari(binari{:,3} == 0.3,:);
binari_dens02 = binari(binari{:,3} == 0.2,:);
binari_dens01 = binari(binari{:,3} == 0.1,:);



binari_dens04_0 = binari_dens04(binari_dens04{:,1} == 0,:);
binari_dens04_1 = binari_dens04(binari_dens04{:,1} == 1,:);

binari_dens03_0 = binari_dens03(binari_dens03{:,1} == 0,:);
binari_dens03_1 = binari_dens03(binari_dens03{:,1} == 1,:);

binari_dens02_0 = binari_dens02(binari_dens02{:,1} == 0,:);
binari_dens02_1 = binari_dens02(binari_dens02{:,1} == 1,:);

binari_dens01_0 = binari_dens01(binari_dens01{:,1} == 0,:);
binari_dens01_1 = binari_dens01(binari_dens01{:,1} == 1,:);


binari_aggr_1 = binari_aggr(binari_aggr{:,1} == 1,:);
binari_aggr_0 = binari_aggr(binari_aggr{:,1} == 0,:);


f1=figure;
hold on
title({'Comparazione Algoritmo Constraint Based, Score Based','dataset binari'})
xlabel('Variabili')
ylabel('F1 Measure')

f1 = plot(binari_aggr_0{:,2},binari_aggr_0{:,4},'-o','DisplayName','Score Based','color',[.9 .1 .1] );
f2 = plot(binari_aggr_1{:,2},binari_aggr_1{:,4},'-o','DisplayName','Constraint Based','color',[.1 .9 .1,0.7] );

yl = yline(1,'--','HandleVisibility','off');
y1.LabelHorizontalAlignment = 'left';

ylim([0.85 1.02])

legend('Location','southwest')
saveas(gcf,'Grafici/F1/Binari/binari.png')
%drawnow
hold off

f1=figure;
hold on
title({'Comparazione Algoritmo Constraint Based, Score Based','dataset binari 0.4'})
xlabel('Variabili')
ylabel('F1 Measure')

f1 = plot(binari_dens03_0{:,2},binari_dens04_0{:,5},'-o','DisplayName','Score Based','color',[.9 .1 .1] );
f2 = plot(binari_dens03_1{:,2},binari_dens04_1{:,5},'-o','DisplayName','Constraint Based','color',[.1 .9 .1, 0.7] );

yl = yline(1,'--','HandleVisibility','off');
y1.LabelHorizontalAlignment = 'left';

ylim([0.65 1.02])

legend('Location','southwest')
saveas(gcf,'Grafici/F1/Binari/binari_04.png')
%drawnow
hold off


f1=figure;
hold on
title({'Comparazione Algoritmo Constraint Based, Score Based','dataset binari 0.3'})
xlabel('Variabili')
ylabel('F1 Measure')

f1 = plot(binari_dens03_0{:,2},binari_dens03_0{:,5},'-o','DisplayName','Score Based','color',[.9 .1 .1] );
f2 = plot(binari_dens03_1{:,2},binari_dens03_1{:,5},'-o','DisplayName','Constraint Based','color',[.1 .9 .1, 0.5] );

yl = yline(1,'--','HandleVisibility','off');
y1.LabelHorizontalAlignment = 'left';

ylim([0.85 1.02])

legend('Location','southwest')
saveas(gcf,'Grafici/F1/Binari/binari_03.png')
%drawnow
hold off

f1=figure;
hold on
title({'Comparazione Algoritmo Constraint Based, Score Based','dataset binari 0.2'})
xlabel('Variabili')
ylabel('F1 Measure')

f1 = plot(binari_dens02_0{:,2},binari_dens02_0{:,5},'-o','DisplayName','Score Based','color',[.9 .1 .1] );
f2 = plot(binari_dens02_1{:,2},binari_dens02_1{:,5},'-o','DisplayName','Constraint Based','color',[.1 .9 .1, 0.5] );

yl = yline(1,'--','HandleVisibility','off');
y1.LabelHorizontalAlignment = 'left';

ylim([0.85 1.02])

legend('Location','southwest')
saveas(gcf,'Grafici/F1/Binari/binari_02.png')
%drawnow
hold off

f1=figure;
hold on
title({'Comparazione Algoritmo Constraint Based, Score Based','dataset binari 0.1'})
xlabel('Variabili')
ylabel('F1 Measure')

f1 = plot(binari_dens01_0{:,2},binari_dens01_0{:,5},'-o','DisplayName','Score Based','color',[.9 .1 .1] );
f2 = plot(binari_dens01_1{:,2},binari_dens01_1{:,5},'-o','DisplayName','Constraint Based','color',[.1 .9 .1, 0.5] );

yl = yline(1,'--','HandleVisibility','off');
y1.LabelHorizontalAlignment = 'left';

ylim([0.85 1.02])

legend('Location','southwest')
saveas(gcf,'Grafici/F1/Binari/binari_01.png')
%drawnow
hold off

ternari_dens04 = ternari(ternari{:,3} == 0.4,:);
ternari_dens03 = ternari(ternari{:,3} == 0.3,:);
ternari_dens02 = ternari(ternari{:,3} == 0.2,:);
ternari_dens01 = ternari(ternari{:,3} == 0.1,:);



ternari_dens04_0 = ternari_dens04(ternari_dens04{:,1} == 0,:);
ternari_dens04_1 = ternari_dens04(ternari_dens04{:,1} == 1,:);

ternari_dens03_0 = ternari_dens03(ternari_dens03{:,1} == 0,:);
ternari_dens03_1 = ternari_dens03(ternari_dens03{:,1} == 1,:);

ternari_dens02_0 = ternari_dens02(ternari_dens02{:,1} == 0,:);
ternari_dens02_1 = ternari_dens02(ternari_dens02{:,1} == 1,:);

ternari_dens01_0 = ternari_dens01(ternari_dens01{:,1} == 0,:);
ternari_dens01_1 = ternari_dens01(ternari_dens01{:,1} == 1,:);


ternari_aggr_1 = ternari_aggr(ternari_aggr{:,1} == 1,:);
ternari_aggr_0 = ternari_aggr(ternari_aggr{:,1} == 0,:);


f1=figure;
hold on
title({'Comparazione Algoritmo Constraint Based, Score Based','dataset ternari'})
xlabel('Variabili')
ylabel('F1 Measure')

f1 = plot(ternari_aggr_0{:,2},ternari_aggr_0{:,4},'-o','DisplayName','Score Based','color',[.9 .1 .1] );
f2 = plot(ternari_aggr_1{:,2},ternari_aggr_1{:,4},'-o','DisplayName','Constraint Based','color',[.1 .9 .1,0.7] );

yl = yline(1,'--','HandleVisibility','off');
y1.LabelHorizontalAlignment = 'left';

ylim([0.55 1.02])

legend('Location','southwest')
saveas(gcf,'Grafici/F1/ternari/ternari.png')
%drawnow
hold off

f1=figure;
hold on
title({'Comparazione Algoritmo Constraint Based, Score Based','dataset ternari 0.4'})
xlabel('Variabili')
ylabel('F1 Measure')

f1 = plot(ternari_dens03_0{:,2},ternari_dens04_0{:,5},'-o','DisplayName','Score Based','color',[.9 .1 .1] );
f2 = plot(ternari_dens03_1{:,2},ternari_dens04_1{:,5},'-o','DisplayName','Constraint Based','color',[.1 .9 .1, 0.7] );

yl = yline(1,'--','HandleVisibility','off');
y1.LabelHorizontalAlignment = 'left';

ylim([0.35 1.02])

legend('Location','southwest')
saveas(gcf,'Grafici/F1/ternari/ternari_04.png')
%drawnow
hold off


f1=figure;
hold on
title({'Comparazione Algoritmo Constraint Based, Score Based','dataset ternari 0.3'})
xlabel('Variabili')
ylabel('F1 Measure')

f1 = plot(ternari_dens03_0{:,2},ternari_dens03_0{:,5},'-o','DisplayName','Score Based','color',[.9 .1 .1] );
f2 = plot(ternari_dens03_1{:,2},ternari_dens03_1{:,5},'-o','DisplayName','Constraint Based','color',[.1 .9 .1, 0.7] );

yl = yline(1,'--','HandleVisibility','off');
y1.LabelHorizontalAlignment = 'left';

ylim([0.35 1.02])

legend('Location','southwest')
saveas(gcf,'Grafici/F1/ternari/ternari_03.png')
%drawnow
hold off

f1=figure;
hold on
title({'Comparazione Algoritmo Constraint Based, Score Based','dataset ternari 0.2'})
xlabel('Variabili')
ylabel('F1 Measure')

f1 = plot(ternari_dens02_0{:,2},ternari_dens02_0{:,5},'-o','DisplayName','Score Based','color',[.9 .1 .1] );
f2 = plot(ternari_dens02_1{:,2},ternari_dens02_1{:,5},'-o','DisplayName','Constraint Based','color',[.1 .9 .1, 0.7] );

yl = yline(1,'--','HandleVisibility','off');
y1.LabelHorizontalAlignment = 'left';

ylim([0.85 1.02])

legend('Location','southwest')
saveas(gcf,'Grafici/F1/ternari/ternari_02.png')
%drawnow
hold off

f1=figure;
hold on
title({'Comparazione Algoritmo Constraint Based, Score Based','dataset ternari 0.1'})
xlabel('Variabili')
ylabel('F1 Measure')

f1 = plot(ternari_dens01_0{:,2},ternari_dens01_0{:,5},'-o','DisplayName','Score Based','color',[.9 .1 .1] );
f2 = plot(ternari_dens01_1{:,2},ternari_dens01_1{:,5},'-o','DisplayName','Constraint Based','color',[.1 .9 .1, 0.7] );

yl = yline(1,'--','HandleVisibility','off');
y1.LabelHorizontalAlignment = 'left';

ylim([0.85 1.02])

legend('Location','southwest')
saveas(gcf,'Grafici/F1/ternari/ternari_01.png')
%drawnow
hold off

quaternari_dens04 = quaternari(quaternari{:,3} == 0.4,:);
quaternari_dens03 = quaternari(quaternari{:,3} == 0.3,:);
quaternari_dens02 = quaternari(quaternari{:,3} == 0.2,:);
quaternari_dens01 = quaternari(quaternari{:,3} == 0.1,:);



quaternari_dens04_0 = quaternari_dens04(quaternari_dens04{:,1} == 0,:);
quaternari_dens04_1 = quaternari_dens04(quaternari_dens04{:,1} == 1,:);

quaternari_dens03_0 = quaternari_dens03(quaternari_dens03{:,1} == 0,:);
quaternari_dens03_1 = quaternari_dens03(quaternari_dens03{:,1} == 1,:);

quaternari_dens02_0 = quaternari_dens02(quaternari_dens02{:,1} == 0,:);
quaternari_dens02_1 = quaternari_dens02(quaternari_dens02{:,1} == 1,:);

quaternari_dens01_0 = quaternari_dens01(quaternari_dens01{:,1} == 0,:);
quaternari_dens01_1 = quaternari_dens01(quaternari_dens01{:,1} == 1,:);


quaternari_aggr_1 = quaternari_aggr(quaternari_aggr{:,1} == 1,:);
quaternari_aggr_0 = quaternari_aggr(quaternari_aggr{:,1} == 0,:);


f1=figure;
hold on
title({'Comparazione Algoritmo Constraint Based, Score Based','dataset quaternari'})
xlabel('Variabili')
ylabel('F1 Measure')

f1 = plot(quaternari_aggr_0{:,2},quaternari_aggr_0{:,4},'-o','DisplayName','Score Based','color',[.9 .1 .1] );
f2 = plot(quaternari_aggr_1{:,2},quaternari_aggr_1{:,4},'-o','DisplayName','Constraint Based','color',[.1 .9 .1,0.7] );

yl = yline(1,'--','HandleVisibility','off');
y1.LabelHorizontalAlignment = 'left';

ylim([0.55 1.02])

legend('Location','southwest')
saveas(gcf,'Grafici/F1/quaternari/quaternari.png')
%drawnow
hold off

f1=figure;
hold on
title({'Comparazione Algoritmo Constraint Based, Score Based','dataset quaternari 0.4'})
xlabel('Variabili')
ylabel('F1 Measure')

f1 = plot(quaternari_dens03_0{:,2},quaternari_dens04_0{:,5},'-o','DisplayName','Score Based','color',[.9 .1 .1] );
f2 = plot(quaternari_dens03_1{:,2},quaternari_dens04_1{:,5},'-o','DisplayName','Constraint Based','color',[.1 .9 .1, 0.7] );

yl = yline(1,'--','HandleVisibility','off');
y1.LabelHorizontalAlignment = 'left';

ylim([0.25 1.02])

legend('Location','southwest')
saveas(gcf,'Grafici/F1/quaternari/quaternari_04.png')
%drawnow
hold off


f1=figure;
hold on
title({'Comparazione Algoritmo Constraint Based, Score Based','dataset quaternari 0.3'})
xlabel('Variabili')
ylabel('F1 Measure')

f1 = plot(quaternari_dens03_0{:,2},quaternari_dens03_0{:,5},'-o','DisplayName','Score Based','color',[.9 .1 .1] );
f2 = plot(quaternari_dens03_1{:,2},quaternari_dens03_1{:,5},'-o','DisplayName','Constraint Based','color',[.1 .9 .1, 0.7] );

yl = yline(1,'--','HandleVisibility','off');
y1.LabelHorizontalAlignment = 'left';

ylim([0.55 1.02])

legend('Location','southwest')
saveas(gcf,'Grafici/F1/quaternari/quaternari_03.png')
%drawnow
hold off

f1=figure;
hold on
title({'Comparazione Algoritmo Constraint Based, Score Based','dataset quaternari 0.2'})
xlabel('Variabili')
ylabel('F1 Measure')

f1 = plot(quaternari_dens02_0{:,2},quaternari_dens02_0{:,5},'-o','DisplayName','Score Based','color',[.9 .1 .1] );
f2 = plot(quaternari_dens02_1{:,2},quaternari_dens02_1{:,5},'-o','DisplayName','Constraint Based','color',[.1 .9 .1, 0.5] );

yl = yline(1,'--','HandleVisibility','off');
y1.LabelHorizontalAlignment = 'left';

ylim([0.55 1.02])

legend('Location','southwest')
saveas(gcf,'Grafici/F1/quaternari/quaternari_02.png')
%drawnow
hold off

f1=figure;
hold on
title({'Comparazione Algoritmo Constraint Based, Score Based','dataset quaternari 0.1'})
xlabel('Variabili')
ylabel('F1 Measure')

f1 = plot(quaternari_dens01_0{:,2},quaternari_dens01_0{:,5},'-o','DisplayName','Score Based','color',[.9 .1 .1] );
f2 = plot(quaternari_dens01_1{:,2},quaternari_dens01_1{:,5},'-o','DisplayName','Constraint Based','color',[.1 .9 .1, 0.7] );

yl = yline(1,'--','HandleVisibility','off');
y1.LabelHorizontalAlignment = 'left';

ylim([0.65 1.02])

legend('Location','southwest')
saveas(gcf,'Grafici/F1/quaternari/quaternari_01.png')
%drawnow
hold off




close all



