dataset = readtable('results_aggregate.csv');
dataset_aggr = readtable('results_aggregate_global.csv');
dataset_da = readtable('results_aggregate_da.csv');
dataset_aggr_da = readtable('results_aggregate_global_da.csv');



binari_aggr = dataset_aggr(dataset_aggr{:,3} == 2,:);
ternari_aggr = dataset_aggr(dataset_aggr{:,3} ==3,:);
quaternari_aggr = dataset_aggr(dataset_aggr{:,3} == 4,:);

binari = dataset(dataset{:,4} == 2,:);
ternari = dataset(dataset{:,4} ==3,:);
quaternari = dataset(dataset{:,4} == 4,:);


binari_aggr_da = dataset_aggr_da(dataset_aggr_da{:,3} == 2,:);
ternari_aggr_da = dataset_aggr_da(dataset_aggr_da{:,3} ==3,:);
quaternari_aggr_da = dataset_aggr_da(dataset_aggr_da{:,3} == 4,:);

binari_da = dataset_da(dataset_da{:,4} == 2,:);
ternari_da = dataset_da(dataset_da{:,4} ==3,:);
quaternari_da = dataset_da(dataset_da{:,4} == 4,:);


binari_dens04 = binari(binari{:,3} == 0.4,:);
binari_dens03 = binari(binari{:,3} == 0.3,:);
binari_dens02 = binari(binari{:,3} == 0.2,:);
binari_dens01 = binari(binari{:,3} == 0.1,:);

binari_dens04_da = binari_da(binari_da{:,3} == 0.4,:);
binari_dens03_da = binari_da(binari_da{:,3} == 0.3,:);
binari_dens02_da = binari_da(binari_da{:,3} == 0.2,:);
binari_dens01_da = binari_da(binari_da{:,3} == 0.1,:);


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

binari_dens04_0_da = binari_dens04_da(binari_dens04_da{:,1} == 0,:);
binari_dens04_1_da = binari_dens04_da(binari_dens04_da{:,1} == 1,:);

binari_dens03_0_da = binari_dens03_da(binari_dens03_da{:,1} == 0,:);
binari_dens03_1_da = binari_dens03_da(binari_dens03_da{:,1} == 1,:);

binari_dens02_0_da = binari_dens02_da(binari_dens02_da{:,1} == 0,:);
binari_dens02_1_da = binari_dens02_da(binari_dens02_da{:,1} == 1,:);

binari_dens01_0_da = binari_dens01_da(binari_dens01_da{:,1} == 0,:);
binari_dens01_1_da = binari_dens01_da(binari_dens01_da{:,1} == 1,:);


binari_aggr_1_da = binari_aggr_da(binari_aggr_da{:,1} == 1,:);
binari_aggr_0_da = binari_aggr_da(binari_aggr_da{:,1} == 0,:);


f1=figure;
hold on
title({'Comparazione Algoritmo Constraint Based, Score Based','dataset binari'})
xlabel('Variabili')
ylabel('F1 Measure')

f1 = plot(binari_aggr_0{:,2},binari_aggr_0{:,4},'-o','DisplayName','Score Based','color',[.9 .1 .1] );
f2 = plot(binari_aggr_1{:,2},binari_aggr_1{:,4},'-o','DisplayName','Constraint Based α=0.1','color',[.1 .9 .1,0.7] );
f3 = plot(binari_aggr_0_da{:,2},binari_aggr_0_da{:,5},'-.','DisplayName','Score Based con DA','color',[.9 .1 .1] );
f4 = plot(binari_aggr_1_da{:,2},binari_aggr_1_da{:,5},'-.','DisplayName','Constraint Based con DA α=0.00001','color',[.1 .9 .1,0.7] );

yl = yline(1,'--','HandleVisibility','off');
y1.LabelHorizontalAlignment = 'left';

ylim([0.70 1.02])
xticks([3 4 5 6 10 15 20])

legend('Location','southwest')
saveas(gcf,'Grafici/F1/Binari/binari.pdf')
%drawnow
hold off

f1=figure;
hold on
title({'Comparazione Algoritmo Constraint Based, Score Based','dataset binari 0.4'})
xlabel('Variabili')
ylabel('F1 Measure')

f1 = plot(binari_dens03_0_da{:,2},binari_dens04_0{:,5},'-o','DisplayName','Score Based','color',[.9 .1 .1] );
f2 = plot(binari_dens03_1_da{:,2},binari_dens04_1{:,5},'-o','DisplayName','Constraint Based α=0.1','color',[.1 .9 .1, 0.7] );
f3 = plot(binari_dens03_0_da{:,2},binari_dens04_0_da{:,6},'-.','DisplayName','Score Based con DA','color',[.9 .1 .1] );
f4 = plot(binari_dens03_1_da{:,2},binari_dens04_1_da{:,6},'-.','DisplayName','Constraint Based con DA α=0.00001','color',[.1 .9 .1, 0.7] );


yl = yline(1,'--','HandleVisibility','off');
y1.LabelHorizontalAlignment = 'left';

ylim([0.40 1.02])
xticks([3 4 5 6 10 15 20])

legend('Location','southwest')
saveas(gcf,'Grafici/F1/Binari/binari_04.pdf')
%drawnow
hold off


f1=figure;
hold on
title({'Comparazione Algoritmo Constraint Based, Score Based','dataset binari 0.3'})
xlabel('Variabili')
ylabel('F1 Measure')

f1 = plot(binari_dens03_0{:,2},binari_dens03_0{:,5},'-o','DisplayName','Score Based','color',[.9 .1 .1] );
f2 = plot(binari_dens03_1{:,2},binari_dens03_1{:,5},'-o','DisplayName','Constraint Based α=0.1','color',[.1 .9 .1, 0.5] );
f3 = plot(binari_dens03_0_da{:,2},binari_dens03_0_da{:,6},'-.','DisplayName','Score Based con DA','color',[.9 .1 .1] );
f4 = plot(binari_dens03_1_da{:,2},binari_dens03_1_da{:,6},'-.','DisplayName','Constraint Based con DA α=0.00001','color',[.1 .9 .1, 0.5] );

yl = yline(1,'--','HandleVisibility','off');
y1.LabelHorizontalAlignment = 'left';

ylim([0.65 1.02])
xticks([3 4 5 6 10 15 20])

legend('Location','southwest')
saveas(gcf,'Grafici/F1/Binari/binari_03.pdf')
%drawnow
hold off

f1=figure;
hold on
title({'Comparazione Algoritmo Constraint Based, Score Based','dataset binari 0.2'})
xlabel('Variabili')
ylabel('F1 Measure')

f1 = plot(binari_dens02_0{:,2},binari_dens02_0{:,5},'-o','DisplayName','Score Based','color',[.9 .1 .1] );
f2 = plot(binari_dens02_1{:,2},binari_dens02_1{:,5},'-o','DisplayName','Constraint Based α=0.1','color',[.1 .9 .1, 0.5] );
f3 = plot(binari_dens02_0_da{:,2},binari_dens02_0_da{:,6},'-.','DisplayName','Score Based con DA','color',[.9 .1 .1] );
f4 = plot(binari_dens02_1_da{:,2},binari_dens02_1_da{:,6},'-.','DisplayName','Constraint Based con DA α=0.00001','color',[.1 .9 .1, 0.5] );


yl = yline(1,'--','HandleVisibility','off');
y1.LabelHorizontalAlignment = 'left';

ylim([0.85 1.02])
xticks([3 4 5 6 10 15 20])

legend('Location','southwest')
saveas(gcf,'Grafici/F1/Binari/binari_02.pdf')
%drawnow
hold off

f1=figure;
hold on
title({'Comparazione Algoritmo Constraint Based, Score Based','dataset binari 0.1'})
xlabel('Variabili')
ylabel('F1 Measure')

f1 = plot(binari_dens01_0{:,2},binari_dens01_0{:,5},'-o','DisplayName','Score Based','color',[.9 .1 .1] );
f2 = plot(binari_dens01_1{:,2},binari_dens01_1{:,5},'-o','DisplayName','Constraint Based α=0.1','color',[.1 .9 .1, 0.5] );
f3 = plot(binari_dens01_0_da{:,2},binari_dens01_0_da{:,6},'-.','DisplayName','Score Based con DA','color',[.9 .1 .1] );
f4 = plot(binari_dens01_1_da{:,2},binari_dens01_1_da{:,6},'-.','DisplayName','Constraint Based con DA α=0.00001','color',[.1 .9 .1, 0.5] );


yl = yline(1,'--','HandleVisibility','off');
y1.LabelHorizontalAlignment = 'left';

ylim([0.85 1.02])
xticks([3 4 5 6 10 15 20])

legend('Location','southwest')
saveas(gcf,'Grafici/F1/Binari/binari_01.pdf')
%drawnow
hold off
ternari_dens04 = ternari(ternari{:,3} == 0.4,:);
ternari_dens03 = ternari(ternari{:,3} == 0.3,:);
ternari_dens02 = ternari(ternari{:,3} == 0.2,:);
ternari_dens01 = ternari(ternari{:,3} == 0.1,:);

ternari_dens04_da = ternari_da(ternari_da{:,3} == 0.4,:);
ternari_dens03_da = ternari_da(ternari_da{:,3} == 0.3,:);
ternari_dens02_da = ternari_da(ternari_da{:,3} == 0.2,:);
ternari_dens01_da = ternari_da(ternari_da{:,3} == 0.1,:);


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

ternari_dens04_0_da = ternari_dens04_da(ternari_dens04_da{:,1} == 0,:);
ternari_dens04_1_da = ternari_dens04_da(ternari_dens04_da{:,1} == 1,:);

ternari_dens03_0_da = ternari_dens03_da(ternari_dens03_da{:,1} == 0,:);
ternari_dens03_1_da = ternari_dens03_da(ternari_dens03_da{:,1} == 1,:);

ternari_dens02_0_da = ternari_dens02_da(ternari_dens02_da{:,1} == 0,:);
ternari_dens02_1_da = ternari_dens02_da(ternari_dens02_da{:,1} == 1,:);

ternari_dens01_0_da = ternari_dens01_da(ternari_dens01_da{:,1} == 0,:);
ternari_dens01_1_da = ternari_dens01_da(ternari_dens01_da{:,1} == 1,:);


ternari_aggr_1_da = ternari_aggr_da(ternari_aggr_da{:,1} == 1,:);
ternari_aggr_0_da = ternari_aggr_da(ternari_aggr_da{:,1} == 0,:);


f1=figure;
hold on
title({'Comparazione Algoritmo Constraint Based, Score Based','dataset ternari'})
xlabel('Variabili')
ylabel('F1 Measure')

f1 = plot(ternari_aggr_0{:,2},ternari_aggr_0{:,4},'-o','DisplayName','Score Based','color',[.9 .1 .1] );
f2 = plot(ternari_aggr_1{:,2},ternari_aggr_1{:,4},'-o','DisplayName','Constraint Based α=0.1','color',[.1 .9 .1,0.7] );
f3 = plot(ternari_aggr_0_da{:,2},ternari_aggr_0_da{:,5},'-.','DisplayName','Score Based con DA','color',[.9 .1 .1] );
f4 = plot(ternari_aggr_1_da{:,2},ternari_aggr_1_da{:,5},'-.','DisplayName','Constraint Based con DA α=0.00001 ','color',[.1 .9 .1,0.7] );

yl = yline(1,'--','HandleVisibility','off');
y1.LabelHorizontalAlignment = 'left';

ylim([0.55 1.02])
xticks([3 4 5 6 10 15 20])

legend('Location','southwest')
saveas(gcf,'Grafici/F1/ternari/ternari.pdf')
%drawnow
hold off

f1=figure;
hold on
title({'Comparazione Algoritmo Constraint Based, Score Based','dataset ternari 0.4'})
xlabel('Variabili')
ylabel('F1 Measure')

f1 = plot(ternari_dens04_0_da{:,2},ternari_dens04_0{:,5},'-o','DisplayName','Score Based','color',[.9 .1 .1] );
f2 = plot(ternari_dens04_1_da{:,2},ternari_dens04_1{:,5},'-o','DisplayName','Constraint Based α=0.1','color',[.1 .9 .1, 0.7] );
f3 = plot(ternari_dens04_0_da{:,2},ternari_dens04_0_da{:,6},'-.','DisplayName','Score Based con DA','color',[.9 .1 .1] );
f4 = plot(ternari_dens04_1_da{:,2},ternari_dens04_1_da{:,6},'-.','DisplayName','Constraint Based con DA α=0.00001','color',[.1 .9 .1, 0.7] );


yl = yline(1,'--','HandleVisibility','off');
y1.LabelHorizontalAlignment = 'left';

ylim([0.15 1.02])
xticks([3 4 5 6 10 15 20])


legend('Location','southwest')
saveas(gcf,'Grafici/F1/ternari/ternari_04.pdf')
%drawnow
hold off


f1=figure;
hold on
title({'Comparazione Algoritmo Constraint Based, Score Based','dataset ternari 0.3'})
xlabel('Variabili')
ylabel('F1 Measure')

f1 = plot(ternari_dens03_0{:,2},ternari_dens03_0{:,5},'-o','DisplayName','Score Based','color',[.9 .1 .1] );
f2 = plot(ternari_dens03_1{:,2},ternari_dens03_1{:,5},'-o','DisplayName','Constraint Based α=0.1','color',[.1 .9 .1, 0.5] );
f3 = plot(ternari_dens03_0_da{:,2},ternari_dens03_0_da{:,6},'-.','DisplayName','Score Based con DA','color',[.9 .1 .1] );
f4 = plot(ternari_dens03_1_da{:,2},ternari_dens03_1_da{:,6},'-.','DisplayName','Constraint Based con DA α=0.00001','color',[.1 .9 .1, 0.5] );

yl = yline(1,'--','HandleVisibility','off');
y1.LabelHorizontalAlignment = 'left';

ylim([0.45 1.02])
xticks([3 4 5 6 10 15 20])

legend('Location','southwest')
saveas(gcf,'Grafici/F1/ternari/ternari_03.pdf')
%drawnow
hold off

f1=figure;
hold on
title({'Comparazione Algoritmo Constraint Based, Score Based','dataset ternari 0.2'})
xlabel('Variabili')
ylabel('F1 Measure')

f1 = plot(ternari_dens02_0{:,2},ternari_dens02_0{:,5},'-o','DisplayName','Score Based','color',[.9 .1 .1] );
f2 = plot(ternari_dens02_1{:,2},ternari_dens02_1{:,5},'-o','DisplayName','Constraint Based α=0.1','color',[.1 .9 .1, 0.5] );
f3 = plot(ternari_dens02_0_da{:,2},ternari_dens02_0_da{:,6},'-.','DisplayName','Score Based con DA','color',[.9 .1 .1] );
f4 = plot(ternari_dens02_1_da{:,2},ternari_dens02_1_da{:,6},'-.','DisplayName','Constraint Based con DA α=0.00001','color',[.1 .9 .1, 0.5] );


yl = yline(1,'--','HandleVisibility','off');
y1.LabelHorizontalAlignment = 'left';

ylim([0.65 1.02])
xticks([3 4 5 6 10 15 20])

legend('Location','southwest')
saveas(gcf,'Grafici/F1/ternari/ternari_02.pdf')
%drawnow
hold off

f1=figure;
hold on
title({'Comparazione Algoritmo Constraint Based, Score Based','dataset ternari 0.1'})
xlabel('Variabili')
ylabel('F1 Measure')

f1 = plot(ternari_dens01_0{:,2},ternari_dens01_0{:,5},'-o','DisplayName','Score Based','color',[.9 .1 .1] );
f2 = plot(ternari_dens01_1{:,2},ternari_dens01_1{:,5},'-o','DisplayName','Constraint Based α=0.1','color',[.1 .9 .1, 0.5] );
f3 = plot(ternari_dens01_0_da{:,2},ternari_dens01_0_da{:,6},'-.','DisplayName','Score Based con DA','color',[.9 .1 .1],'LineWidth',0.6 );
f4 = plot(ternari_dens01_1_da{:,2},ternari_dens01_1_da{:,6},'-.','DisplayName','Constraint Based con DA α=0.00001','color',[.1 .9 .1, 0.5],'LineWidth',1 );


yl = yline(1,'--','HandleVisibility','off');
y1.LabelHorizontalAlignment = 'left';

ylim([0.85 1.02])
xticks([3 4 5 6 10 15 20])

legend('Location','southwest')
saveas(gcf,'Grafici/F1/ternari/ternari_01.pdf')
%drawnow
hold off

quaternari_dens04 = quaternari(quaternari{:,3} == 0.4,:);
quaternari_dens03 = quaternari(quaternari{:,3} == 0.3,:);
quaternari_dens02 = quaternari(quaternari{:,3} == 0.2,:);
quaternari_dens01 = quaternari(quaternari{:,3} == 0.1,:);

quaternari_dens04_da = quaternari_da(quaternari_da{:,3} == 0.4,:);
quaternari_dens03_da = quaternari_da(quaternari_da{:,3} == 0.3,:);
quaternari_dens02_da = quaternari_da(quaternari_da{:,3} == 0.2,:);
quaternari_dens01_da = quaternari_da(quaternari_da{:,3} == 0.1,:);


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

quaternari_dens04_0_da = quaternari_dens04_da(quaternari_dens04_da{:,1} == 0,:);
quaternari_dens04_1_da = quaternari_dens04_da(quaternari_dens04_da{:,1} == 1,:);

quaternari_dens03_0_da = quaternari_dens03_da(quaternari_dens03_da{:,1} == 0,:);
quaternari_dens03_1_da = quaternari_dens03_da(quaternari_dens03_da{:,1} == 1,:);

quaternari_dens02_0_da = quaternari_dens02_da(quaternari_dens02_da{:,1} == 0,:);
quaternari_dens02_1_da = quaternari_dens02_da(quaternari_dens02_da{:,1} == 1,:);

quaternari_dens01_0_da = quaternari_dens01_da(quaternari_dens01_da{:,1} == 0,:);
quaternari_dens01_1_da = quaternari_dens01_da(quaternari_dens01_da{:,1} == 1,:);


quaternari_aggr_1_da = quaternari_aggr_da(quaternari_aggr_da{:,1} == 1,:);
quaternari_aggr_0_da = quaternari_aggr_da(quaternari_aggr_da{:,1} == 0,:);


f1=figure;
hold on
title({'Comparazione Algoritmo Constraint Based, Score Based','dataset quaternari'})
xlabel('Variabili')
ylabel('F1 Measure')

f1 = plot(quaternari_aggr_0{:,2},quaternari_aggr_0{:,4},'-o','DisplayName','Score Based','color',[.9 .1 .1] );
f2 = plot(quaternari_aggr_1{:,2},quaternari_aggr_1{:,4},'-o','DisplayName','Constraint Based α=0.1','color',[.1 .9 .1,0.7] );
f3 = plot(quaternari_aggr_0_da{:,2},quaternari_aggr_0_da{:,5},'-.','DisplayName','Score Based con DA','color',[.9 .1 .1] );
f4 = plot(quaternari_aggr_1_da{:,2},quaternari_aggr_1_da{:,5},'-.','DisplayName','Constraint Based con DA α=0.00001','color',[.1 .9 .1,0.7] );

yl = yline(1,'--','HandleVisibility','off');
y1.LabelHorizontalAlignment = 'left';

ylim([0.55 1.02])
xticks([3 4 5 6 10 15])

legend('Location','southwest')
saveas(gcf,'Grafici/F1/quaternari/quaternari.pdf')
%drawnow
hold off

f1=figure;
hold on
title({'Comparazione Algoritmo Constraint Based, Score Based','dataset quaternari 0.4'})
xlabel('Variabili')
ylabel('F1 Measure')

f1 = plot(quaternari_dens03_0_da{:,2},quaternari_dens04_0{:,5},'-o','DisplayName','Score Based','color',[.9 .1 .1] );
f2 = plot(quaternari_dens03_1_da{:,2},quaternari_dens04_1{:,5},'-o','DisplayName','Constraint Based α=0.1','color',[.1 .9 .1, 0.7] );
f3 = plot(quaternari_dens03_0_da{:,2},quaternari_dens04_0_da{:,6},'-.','DisplayName','Score Based con DA','color',[.9 .1 .1] );
f4 = plot(quaternari_dens03_1_da{:,2},quaternari_dens04_1_da{:,6},'-.','DisplayName','Constraint Based con DA α=0.00001','color',[.1 .9 .1, 0.7] );


yl = yline(1,'--','HandleVisibility','off');
y1.LabelHorizontalAlignment = 'left';

ylim([0.25 1.02])
xticks([3 4 5 6 10 15])



legend('Location','southwest')
saveas(gcf,'Grafici/F1/quaternari/quaternari_04.pdf')
%drawnow
hold off


f1=figure;
hold on
title({'Comparazione Algoritmo Constraint Based, Score Based','dataset quaternari 0.3'})
xlabel('Variabili')
ylabel('F1 Measure')

f1 = plot(quaternari_dens03_0{:,2},quaternari_dens03_0{:,5},'-o','DisplayName','Score Based','color',[.9 .1 .1] );
f2 = plot(quaternari_dens03_1{:,2},quaternari_dens03_1{:,5},'-o','DisplayName','Constraint Based α=0.1','color',[.1 .9 .1, 0.5] );
f3 = plot(quaternari_dens03_0_da{:,2},quaternari_dens03_0_da{:,6},'-.','DisplayName','Score Based con DA','color',[.9 .1 .1] );
f4 = plot(quaternari_dens03_1_da{:,2},quaternari_dens03_1_da{:,6},'-.','DisplayName','Constraint Based con DA α=0.00001','color',[.1 .9 .1, 0.5] );

yl = yline(1,'--','HandleVisibility','off');
y1.LabelHorizontalAlignment = 'left';

ylim([0.55 1.02])
xticks([3 4 5 6 10 15])

legend('Location','southwest')
saveas(gcf,'Grafici/F1/quaternari/quaternari_03.pdf')
%drawnow
hold off

f1=figure;
hold on
title({'Comparazione Algoritmo Constraint Based, Score Based','dataset quaternari 0.2'})
xlabel('Variabili')
ylabel('F1 Measure')

f1 = plot(quaternari_dens02_0{:,2},quaternari_dens02_0{:,5},'-o','DisplayName','Score Based','color',[.9 .1 .1] );
f2 = plot(quaternari_dens02_1{:,2},quaternari_dens02_1{:,5},'-o','DisplayName','Constraint Based α=0.1','color',[.1 .9 .1, 0.5] );
f3 = plot(quaternari_dens02_0_da{:,2},quaternari_dens02_0_da{:,6},'-.','DisplayName','Score Based con DA','color',[.9 .1 .1] );
f4 = plot(quaternari_dens02_1_da{:,2},quaternari_dens02_1_da{:,6},'-.','DisplayName','Constraint Based con DA α=0.00001','color',[.1 .9 .1, 0.5] );


yl = yline(1,'--','HandleVisibility','off');
y1.LabelHorizontalAlignment = 'left';

ylim([0.55 1.02])
xticks([3 4 5 6 10 15])

legend('Location','southwest')
saveas(gcf,'Grafici/F1/quaternari/quaternari_02.pdf')
%drawnow
hold off

f1=figure;
hold on
title({'Comparazione Algoritmo Constraint Based, Score Based','dataset quaternari 0.1'})
xlabel('Variabili')
ylabel('F1 Measure')

f1 = plot(quaternari_dens01_0{:,2},quaternari_dens01_0{:,5},'-o','DisplayName','Score Based','color',[.9 .1 .1] );
f2 = plot(quaternari_dens01_1{:,2},quaternari_dens01_1{:,5},'-o','DisplayName','Constraint Based α=0.1','color',[.1 .9 .1, 0.5] );
f3 = plot(quaternari_dens01_0_da{:,2},quaternari_dens01_0_da{:,6},'-.','DisplayName','Score Based con DA','color',[.9 .1 .1],'LineWidth',1.1 );
f4 = plot(quaternari_dens01_1_da{:,2},quaternari_dens01_1_da{:,6},'-.','DisplayName','Constraint Based con DA α=0.00001','color',[.1 .9 .1, 0.5] );


yl = yline(1,'--','HandleVisibility','off');
y1.LabelHorizontalAlignment = 'left';

ylim([0.65 1.02])
xticks([3 4 5 6 10 15])

legend('Location','southwest')
saveas(gcf,'Grafici/F1/quaternari/quaternari_01.pdf')
%drawnow
hold off




close all


f1=figure;
hold on
title({'Performance algoritmo Score-based','dataset ternari p=0.3 15 variabili','Variando il numero di traiettorie'})
xlabel('Numero Traiettorie')
ylabel('F1 Measure')

f1 = plot([300 450 600 750 900],[0.853;0.923;0.935;0.942;0.966],'-o','DisplayName','Score Based','color',[.9 .1 .1] );


yl = yline(1,'--','HandleVisibility','off');
y1.LabelHorizontalAlignment = 'left';

ylim([0.65 1.02])
xticks([300 450 600 750 900])

legend('Location','southwest')
saveas(gcf,'Grafici/F1/da/ternari_03_15.pdf')
saveas(gcf,'Grafici/F1/da/ternari_03_15.png')
%drawnow
hold off


f1=figure;
hold on
title({'Performance algoritmo Score-based','dataset quaternari p=0.4 10 variabili','Variando il numero di traiettorie'})
xlabel('Numero Traiettorie')
ylabel('F1 Measure')

f1 = plot([300 450 600 750 900],[0.790 0.798 ,0.882 0.898 0.852],'-o','DisplayName','Score Based','color',[.9 .1 .1] );


yl = yline(1,'--','HandleVisibility','off');
y1.LabelHorizontalAlignment = 'left';

ylim([0.65 1.02])
xticks([300 450 600 750 900])

legend('Location','southwest')
saveas(gcf,'Grafici/F1/da/quaternari_04_10.pdf')
saveas(gcf,'Grafici/F1/da/quaternari_04_10.png')
%drawnow
hold off