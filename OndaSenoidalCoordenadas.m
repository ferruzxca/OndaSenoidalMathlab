% Solicitar la ecuación al usuario
equation = input('Introduce la ecuación (por ejemplo, sin(9*x) o sin(x/3)): ', 's');
syms x;

% Convertir la entrada del usuario en una función
f = str2func(['@(x) ' equation]);

% Encontrar el periodo de la función en base a la ecuación
% Usar una aproximación para encontrar el coeficiente de x dentro del sin()
tokens = regexp(equation, 'sin\((.*?)\*x\)', 'tokens');  % Buscar patrón sin(coef * x)

if isempty(tokens)  % En caso de no encontrar el patrón sin(ax)
    tokens = regexp(equation, 'sin\(x/(.*?)\)', 'tokens');  % Buscar patrón sin(x/a)
    if isempty(tokens)
        coef_x = 1;  % Si no hay coeficiente, entonces el periodo es 2*pi
    else
        coef_x = 1/str2double(tokens{1}{1});  % En caso de tener sin(x/a), el coeficiente es 1/a
    end
else
    coef_x = str2double(tokens{1}{1});  % En caso de tener sin(ax), el coeficiente es a
end

% El periodo es siempre 2*pi dividido por el coeficiente de x
periodo = 2*pi / coef_x;

% Generar puntos para un ciclo de la gráfica
x_vals = linspace(0, periodo, 1000);  % Un solo ciclo desde 0 hasta el periodo calculado
y_vals = f(x_vals);

% Crear la gráfica de la función con límites ajustados
figure;
plot(x_vals, y_vals, 'b-', 'LineWidth', 1.5);
hold on;
grid on;
xlabel('x (radianes)');
ylabel('y');
title(['Gráfica de y = ' equation]);

% Ajustar los límites de los ejes
xlim([0 periodo]);  % Limitar el eje x de 0 al periodo calculado
ylim([-1.1 1.1]);  % Limitar el eje y de -1 a 1

% Definir 8 puntos fraccionarios en el ciclo completo
x_fractions = linspace(0, periodo, 9);  % Dividir el ciclo en 8 partes
y_key_points = f(x_fractions);

% Graficar los puntos clave
plot(x_fractions, y_key_points, 'ro');

% Etiquetar los puntos clave directamente sobre la recta de x
for i = 1:length(x_fractions)
    if x_fractions(i) == 0
        frac_str = '0';  % Etiquetar el punto cero como '0'
    elseif x_fractions(i) == periodo
        frac_str = [char(rats(periodo/pi)) '\pi'];  % Etiquetar el final del ciclo
    else
        frac_str = [char(rats(x_fractions(i)/pi)) '\pi'];  % Etiquetar los puntos intermedios
    end
    % Etiqueta justo en la línea de x
    text(x_fractions(i), -0.15, frac_str, 'VerticalAlignment', 'top', 'HorizontalAlignment', 'center');
end

% Mostrar valores en consola
disp('Valores de x en fracciones de pi y sus correspondientes valores de y:');
for i = 1:length(x_fractions)
    if x_fractions(i) == 0
        fprintf('x = 0, y = %.3f\n', y_key_points(i));
    else
        fprintf('x = %s*pi, y = %.3f\n', rats(x_fractions(i)/pi), y_key_points(i));
    end
end