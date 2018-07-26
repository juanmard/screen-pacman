# Screen-pacman.

El proyecto *"screen-pacman"* trata de sintetizar el clásico juego [Pac-Man](https://es.wikipedia.org/wiki/Pac-Man) en una FPGA mediante herramientas libres.

## Objetivo del proyecto.

El objetivo del proyecto es realizar una copia funcional del juego clásico sin necesidad de implementar un microprocesador en la FPGA, únicamente mediante bloques lógicos y aprovechando el paralelismo intrínseco de los circuitos sintetizados.


## Herramientas utilizadas.

El diseño del proyecto se realiza mediante la herramienta visual [icestudio](https://github.com/FPGAwars/icestudio) y la inclusión en el mismo de diseños en texto con lenguaje *Verilog* de los bloques más complejos o con entidad propia.

![foto de captura](https://raw.githubusercontent.com/juanmard/screen-pacman/master/doc/images/captura.png)

Se toma como partida el ejemplo ["SpriteGame101.ice"](https://github.com/sergicuen/collection-iPxs/blob/master/examples/VideoGame101.ice) de la colección [iPxs-Collection](https://github.com/sergicuen/collection-iPxs) de [Sergio Cuenca](https://github.com/sergicuen/).
Se han reescrito parte de los bloques del ejemplo para intentar separar la representación gráfica del comportamiento dinámico del juego y hacerlo un poco más general. Así mismo se han modificado ciertos bloques de RAM y ROM para dar más capacidad de gráficos.

## Estado actual del proyecto.

Actualmente *(Julio de 2018)* el proyecto se encuentra en fase de experimentación, tiene pequeños *"glitch"* en la reperesentación de los gráficos y problemas de sincronización de escritura en la memoria del mapa.
Se está trabajando en el control mediante un puerto serie conectado al PC para las pruebas.
En estas pruebas se está trabajando en el FSM para un editor del mapa, con la idea de volcarlo en el puerto serie, capturarlo en el PC y resintetizarlo, en un futuro se pretende grabar este mapa directamente en la flash del dispositivo.
Los bloques empleados para la comunicación serie son los bloques de la [colección de Obijuan](https://github.com/Obijuan/Curso-Electronica-Digital-para-makers-con-FPGAs-Libres/blob/master/fp-don-bosco-1.zip), se han modificado algunos valores para adecuarlos a los 16Mhz de reloj de la TinyFPGA.

![foto de la pantalla](https://raw.githubusercontent.com/juanmard/screen-pacman/master/doc/images/pantalla.png)

## Dispositivo empleado.

Las pruebas iniciales se realizaron en una [TinyFPGA-B2](https://store.tinyfpga.com/products/tinyfpga-b2) con la **versión 0.3.3-rc** de _icestudio_, posteriormente se realizaron en una tarjeta [TinyFPGA-BX](https://store.tinyfpga.com/products/tinyfpga-bx), este dispositivo no se encuentra en estos momentos (Julio de 2018) integrado en dicha versión de icestudio, por lo que se realiza una exportación del código Verilog al fichero "screen-pacman.v" y se genera el fichero "top.v" como puente para sintetizar mediante las herramientas básicas de [icestorm](http://www.clifford.at/icestorm/) y [apio](https://github.com/FPGAwars/apio) (versión 0.4.0b3).

![foto del dispositivo](https://raw.githubusercontent.com/juanmard/screen-pacman/master/doc/images/dispositivo.png)

## Cómo sintetizar el proyecto.

### Para TinyFPGA-B2.

Para utilizar el proyecto en _icestudio_ con una _TinyFPGA-B2_ simplemente necesitas el fichero _"screen-pacman.ice"_ y todos los ficheros asociados de _Verilog_ (_*.v_ y _*.vh_), también dispones del resto de ficheros de los bloques de _icestudio_ (*.ice), por si quisieras modificar algún bloque interno _(Recuerda que si modificas un bloque deberás volver a "Agregar como bloque" y grabar y repetir con todos los ficheros que componen el resto del árbol de dependencias)_.

### Para TinyFPGA-BX.

Para utilizar el proyecto con una TinyFPGA-BX deberás realizar un _"apio build"_ seguido de un _"apio upload"_, _apio_ tomará todos los ficheros (incluido el extra _"top.v"_) para sintetizar y programar la tarjeta.
Si necesitas hacer una modificación no olvides exportar en _Verilog_ desde _icestudio_ y modificar el fichero _"top.v"_ si modificas las entradas y salidas del fichero.

