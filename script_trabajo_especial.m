% script_trabajo_especial

clear
clc
close all
dni=37120008;

tic
epsilon=0.1;
[probabilidad, probabilidades_parciales] = calcular_probabilidad_realizar_disparo (dni, epsilon);
fprintf('La probabilidad de que me autoricen realizar dos disparos seguidos con un epsilon=0.1 es: %f \n', probabilidad);
fprintf('El desvio estandar de las primeras 20 probabilidades_parciales es: %f \n', std(probabilidades_parciales(1:20)));
fprintf('El desvio estandar de las ultimas 20 probabilidades_parciales es: %f \n', std(probabilidades_parciales(end-19:end)));
figure, plot(probabilidades_parciales);
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad');
tiempo= toc;
fprintf('El tiempo de convergencia es: %f \n',tiempo);


tic
epsilon2=0.01;
[probabilidad, probabilidades_parciales] = calcular_probabilidad_realizar_disparo (dni, epsilon2);
fprintf('La probabilidad de que me autoricen realizar dos disparos seguidos con un epsilon=0.01 es: %f \n', probabilidad);
fprintf('El desvio estandar de las primeras 20 probabilidades_parciales es: %f \n', std(probabilidades_parciales(1:20)));
fprintf('El desvio estandar de las ultimas 20 probabilidades_parciales es: %f \n', std(probabilidades_parciales(end-19:end)));
figure, plot(probabilidades_parciales);
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad');
tiempo=toc;
fprintf('El tiempo de convergencia es: %f \n',tiempo);

tic
epsilon3=0.001;
[probabilidad, probabilidades_parciales] = calcular_probabilidad_realizar_disparo (dni, epsilon3);
fprintf('La probabilidad de que me autoricen realizar dos disparos seguidos con un epsilon=0.001 es: %d\n', probabilidad);
fprintf('El desvio estandar de las primeras 20 probabilidades_parciales es: %f \n', std(probabilidades_parciales(1:20)));
fprintf('El desvio estandar de las ultimas 20 probabilidades_parciales es: %f \n', std(probabilidades_parciales(end-19:end)));
figure, plot(probabilidades_parciales);
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad');
tiempo=toc;
fprintf('El tiempo de convergencia es: %f \n',tiempo);
