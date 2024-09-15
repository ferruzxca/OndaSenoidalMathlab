# Gráfica de Funciones Trigonométricas en MATLAB

Este script en MATLAB solicita al usuario ingresar una ecuación trigonométrica, como `sin(9*x)` o `sin(x/3)`, y genera la gráfica de la función en un ciclo completo. Además, el script identifica y etiqueta puntos clave fraccionarios en la gráfica basados en divisiones del ciclo, mostrando estos valores tanto en la gráfica como en la consola.

## Funcionamiento

El código realiza los siguientes pasos:

1. **Solicitar la ecuación**: El usuario ingresa una ecuación trigonométrica basada en la función `sin(x)`, como `sin(2*x)` o `sin(x/5)`. Esta ecuación se procesa para identificar el coeficiente de la variable `x`.
   
2. **Calcular el período**: Usando el coeficiente de `x` en la función `sin()`, el script calcula el período de la función. Si no se encuentra un coeficiente explícito, se asume un período estándar de `2π`.

3. **Generar la gráfica**: Se genera una gráfica de la función para un ciclo completo, ajustando los límites de los ejes para que se muestren solo los valores de `x` en el rango de un período y los valores de `y` entre `-1` y `1`.

4. **División del ciclo en fracciones**: El ciclo completo de la función se divide en 8 partes iguales. Estos puntos clave se marcan y etiquetan en la gráfica, y también se muestran en la consola en términos de fracciones de `π`.

5. **Visualización de puntos clave**: Los valores de `x` (en fracciones de `π`) y sus correspondientes valores de `y` se imprimen en la consola para referencia.

## Instrucciones de Uso

1. **Clonar el repositorio**: Clona este repositorio en tu máquina local.

   ```bash
   git clone https://github.com/tu-repositorio/nombre-del-repositorio.git
   cd nombre-del-repositorio
   ```

2. **Abrir MATLAB**: Abre el entorno de MATLAB en tu máquina.

3. **Ejecutar el script**: Ejecuta el script en MATLAB con el siguiente comando:

   ```matlab
   run('nombre-del-archivo.m')
   ```

4. **Ingresar la ecuación**: El programa te pedirá que ingreses una ecuación trigonométrica en términos de `x`. Puedes probar con ejemplos como:

   ```text
   sin(3*x)
   sin(x/2)
   sin(5*x + pi/4)
   ```

5. **Ver la gráfica**: Se generará una gráfica mostrando un ciclo completo de la función ingresada, con los puntos clave destacados en rojo.

6. **Consultar los puntos clave**: Los valores fraccionarios de `x` en términos de `π` y sus correspondientes valores de `y` se mostrarán tanto en la gráfica como en la consola de MATLAB.

## Ejemplo

Si ingresas la ecuación `sin(3*x)`, el script calculará un ciclo completo desde `0` hasta `2π/3`, dividirá el ciclo en 8 partes iguales, y generará la siguiente salida en la consola:

```text
Valores de x en fracciones de pi y sus correspondientes valores de y:
x = 0, y = 0.000
x = 1/4*pi, y = 0.707
x = 1/2*pi, y = 1.000
x = 3/4*pi, y = 0.707
x = pi, y = 0.000
x = 5/4*pi, y = -0.707
x = 3/2*pi, y = -1.000
x = 7/4*pi, y = -0.707
x = 2*pi, y = 0.000
```

## Requisitos

- MATLAB instalado en tu equipo.
- El script debe estar ubicado en un directorio accesible desde MATLAB.

## Notas

- Asegúrate de ingresar la ecuación en términos de `x`, usando funciones trigonométricas válidas en MATLAB como `sin`, `cos`, etc.
- El script solo admite funciones basadas en `sin(x)`. Otros tipos de funciones no están soportadas por esta versión.
