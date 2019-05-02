# DCF77-Demod-Decoder
## Decoder of the DCF77 signal to 7 segment display

Este es un proyecto que hice con <a href="https://github.com/GONZALOCAPILLAPAREDES">Gonzalo</a> en 3º de carrera en una asignatura llamada Circuitos electrónicos.

### Resumen
El objetivo de este proyecto es diseñar y construir un sistema analógico/digital para demodular la señal horaria DCF77(simplificada en nuestro caso) y presentar su valor en 4 displays de 7 segmentos. El circuito analógico se realizará con componentes discretos, mientras que el hardware digital se desarrollará describiendo sus módulos en VHDL y sintetizándolo finalmente sobre la FPGA Spartan 3E contenida en la tarjeta BASYS2 del laboratorio de la Escuela.  

En el display muestra la hora, y al pulsar el botón muestra la fecha.


<br/>
<p align="center">
  <img src="https://user-images.githubusercontent.com/28632986/56023731-de2e1c80-5d0e-11e9-9cae-e1cd299bd923.gif" width="500">
</p>


Esquema de la señal:

<br/>
<p align="center">
  <img src="https://user-images.githubusercontent.com/28632986/56023987-64e2f980-5d0f-11e9-883f-0c422cff65e6.png " width="700">
</p>

Esquema del circuito digital:

<br/>
<p align="center">
  <img src="https://user-images.githubusercontent.com/28632986/56023698-c0f94e00-5d0e-11e9-810d-3725b6e84669.png" width="700">
</p>
<br/>
