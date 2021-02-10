dataset = readtable('datasetResults.csv');




binari = dataset(dataset{:,7} == 2,:);
ternari = dataset(dataset{:,7} ==3,:);
quaternari = dataset(dataset{:,7} == 4,:);



f1=figure;
hold on
title({'Tempi dataset binari'})
xlabel('Variabili')
ylabel('Secondi')

f1 = plot(binari{:,1},binari{:,2},'-o','DisplayName','R','color',[.9 .1 .1] );
f2 = plot(binari{:,1},binari{:,4},'-o','DisplayName','Python Multi Process','color',[.1 .9 .1] );
f3 = plot(binari{:,1},binari{:,5},'-o','DisplayName','Python Multi Process + Patience','color',[.1 .1 .9] );
f4 = plot(binari{:,1},binari{:,6},'-o','DisplayName','Python Single Process','color',[.1 .9 .9] );


xticks([3 4 5 6 10 15])

legend('Location','northwest')
saveas(gcf,'Grafici/Prima/binario.pdf')
saveas(gcf,'Grafici/Prima/binario.png')
%drawnow
hold off

f1=figure;
hold on
title({'Peggioramento % tra R e Python dataset binari'})
xlabel('Variabili')
ylabel('Peggioramento % tempo')

f1 = plot(binari{:,1},binari{:,8},'-o','DisplayName','Peggioramento % tempo','color',[.9 .1 .1] );


xticks([3 4 5 6 10 15])

legend('Location','northwest')
saveas(gcf,'Grafici/Prima/Decremento_binario.pdf')
saveas(gcf,'Grafici/Prima/Decremento_binario.png')
%drawnow
hold off

f1=figure;
hold on
title({'Peggioramento % tra R e Python dataset ternari'})
xlabel('Variabili')
ylabel('Peggioramento % tempo')

f1 = plot(ternari{:,1},ternari{:,8},'-o','DisplayName','Peggioramento % tempo','color',[.9 .1 .1] );


xticks([3 4 5 6 10 15])

legend('Location','northwest')
saveas(gcf,'Grafici/Prima/Decremento_terziario.pdf')
saveas(gcf,'Grafici/Prima/Decremento_terziario.png')
%drawnow
hold off

f1=figure;
hold on
title({'Peggioramento % tra R e Python dataset quaternari'})
xlabel('Variabili')
ylabel('Peggioramento % tempo')

f1 = plot(quaternari{:,1},quaternari{:,8},'-o','DisplayName','Peggioramento % tempo','color',[.9 .1 .1] );


xticks([3 4 5 6 10])

legend('Location','northwest')
saveas(gcf,'Grafici/Prima/Decremento_quaternario.pdf')
saveas(gcf,'Grafici/Prima/Decremento_quaternario.png')
%drawnow
hold off


f1=figure;
hold on
title({'Tempi dataset ternari'})
xlabel('Variabili')
ylabel('Secondi')

f1 = plot(ternari{:,1},ternari{:,2},'-o','DisplayName','R','color',[.9 .1 .1] );
f2 = plot(ternari{:,1},ternari{:,4},'-o','DisplayName','Python Multi Process','color',[.1 .9 .1] );
f3 = plot(ternari{:,1},ternari{:,5},'-o','DisplayName','Python Multi Process + Patience','color',[.1 .1 .9] );


xticks([3 4 5 6 10 15 20])

legend('Location','northwest')
saveas(gcf,'Grafici/Prima/terziari.pdf')
saveas(gcf,'Grafici/Prima/terziari.png')
%drawnow
hold off

f1=figure;
hold on
title({'Tempi dataset quaternari'})
xlabel('Variabili')
ylabel('Secondi')

f1 = plot(quaternari{:,1},quaternari{:,2},'-o','DisplayName','R','color',[.9 .1 .1] );
f2 = plot(quaternari{:,1},quaternari{:,4},'-o','DisplayName','Python Multi Process','color',[.1 .9 .1] );
f3 = plot(quaternari{:,1},quaternari{:,5},'-o','DisplayName','Python Multi Process + Patience','color',[.1 .1 .9] );

xticks([3 4 5 6 10 15])

legend('Location','northwest')
saveas(gcf,'Grafici/Prima/quaternari.pdf')
saveas(gcf,'Grafici/Prima/quaternari.png')
%drawnow
hold off

%------------------------------------------------------------------------
%------------------------------------------------------------------------
%------------------------------------------------------------------------
