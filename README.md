# Proyecto final - Robótica 2023-1

## Integrantes (Grupo de laboratorio Viernes 2-4PM)

- Hector Daniel Vargas
- Christian Camilo Cuestas Ibáñez
- Juan José Rojas Álvarez

## Descripción del problema

En la industria se encuentran distintos tipos de procesos susceptibles a ser optimizados con el objetivo de proteger a las personas, aumentar la calidad en los procesos y maximizar la eficiencia de producción. Los procesos de Pick&Place en el alistamiento de pedidos se componen de tareas tradicionalmente humanas. 

El argumento a favor de la implementación de un sistema robotizado debe establecer al menos un desempeño conceptual basado en la pregunta: _**¿Que tan rápido lo puedo hacer?**_

Se desea establecer la velocidad máxima (mínimo tiempo de operación) que se puede alcanzar utilizando de forma segura un brazo manipulador industrial. 

Sin duda la implementación de un sistema robotizado requerirá la adaptación del proceso (contenedor y estantería), sin embargo, se desea establecer la capacidad de un proceso originalmente manual de ser automatizado utilizando un manipulador robotizado.

## Descripción de la solución propuesta

### Gripper

### Piezas a transportar

### Celda de ensamble

## Análisis

### Código en RAPID comentado
Ambas trayectorias que recorren los 6 espacios de la estantería seguidos aquí.
```RAPID
PROC main()
    Primeros3;Ultimos3;
ENDPROC
```

La trayectoria Homing apaga el testigo lum+inico `DO_03`, apaga la señal del solenoide `DO_02` que implica el inicio de la succión de la ventosa, y enciende la señal del solenoide que implica la dirección contraria a succión `DO_01`, tras esperar un segundo se apaga esta señal, para asegurar que no está succionando por toda la operación y se mueve hasta `Home`, donde todas las articulaciones se encuentran en `0`. Posteriormente espera la entrada `DI_01`, que indica el encendido del testigo lumínico `DO_03` y, ya en conjunto con las trayectorias posteriores, el inicio del proceso.

```RAPID
PROC Homing()
    SetDO DO_03,0;
    SetDO DO_02,0;
    SetDO DO_01,1;
    WaitTime 1;
    SetDO DO_01,0;
    MoveAbsJ Home,v100,z100,tool0\WObj:=wobj0;
    WaitDI DI_01,1;
    SetDO DO_03,1;
ENDPROC
```

La trayectoria `Banda2Piso` corresponde al movimiento del balde desde la banda hasta el punto de colocación del balde. Empieza por acercarce a la banda en el punto `CercaBanda`, toma el balde con `Horizontal/Vertical_Balde_Banda`. Con los demás puntos se traslada en el espacio hasta el punto de colocación del balde. Las instrucciones `Horizontal/Vertical_Balde_Piso_Dejando` Corresponden a cuando el balde ya se encuentra en `0` en la dirección `z` respecto al mundo y se separa el Gancho del mismo.

```RAPID
PROC Banda2Piso()
    MoveJ CercaBanda,v100,z10,Gancho\WObj:=Mundo;
    MoveJ Horizontal_Balde_Banda,v100,z10,Gancho\WObj:=Mundo;
    MoveJ Vertical_Balde_Banda,v50,z10,Gancho\WObj:=Mundo;
    MoveJ Posicion_Intermedia_Banda2Piso,v100,z10,Gancho\WObj:=Mundo;
    MoveJ Vertical_Balde_Piso,v100,z10,Gancho\WObj:=Mundo;
    MoveJ Dejar_Balde_Piso,v100,z10,Gancho\WObj:=Mundo;
    MoveJ Horizontal_Balde_Piso_Dejando,v100,z10,Gancho\WObj:=Mundo;
    MoveJ Vertical_Balde_Dejando,v100,z10,Gancho\WObj:=Mundo;
ENDPROC
```

La trayectoria `Piso_Baja_Asa` corresponde a una primera consideración que no se llevó a cabo prácticamente, que implica bajar el asa del balde para introducir las piezas sin que esta asa se encontrara en el camino y llegara a modificar la trayectoria de las piezas.

```RAPID
PROC Piso_Baja_Asa()
    MoveJ Vertical_Balde_Dejando,v50,z10,Gancho\WObj:=Mundo;
    MoveJ Bajando_Asa_1,v50,z10,Gancho\WObj:=Mundo;
    MoveJ Bajando_Asa_2,v50,z10,Gancho\WObj:=Mundo;
    MoveJ Bajando_Asa_3,v50,z10,Gancho\WObj:=Mundo;
    MoveJ Bajando_Asa_4,v50,z10,Gancho\WObj:=Mundo;
    MoveJ Bajando_Asa_5,v50,z10,Gancho\WObj:=Mundo;
ENDPROC
```

Todas las trayectorias para recoger piezas se encuentran en `SUP/MED/INF_DER/IZQ`, que, con las 6 combinaciones posibles, corresponde a los 6 espacios de la repisa. Donde `DER`, `IZQ`, `SUP`, `MED` e `INF` corresponde a derecho, izquierdo, superior, medio e inferior, respectivamente. Todos están compuestos por 2 primeros puntos de posicionamiento, seguidos de dos puntos de acercamiento. Posteriormente se espera y se empieza la succión, al encender `DO_02`, se devuelve la pieza hasta el mismo punto de acercamiento y, mediante los puntos `ReposicionamientoArriba/Dejar` se gira el manipulador hasta una posición adecuada. Se espera 1 segundo a que llegue, se apaga la succión de la ventosa, se espera 1 segundo, se prende el solenoide que devuelve la válvula a su estado inicial, al encender `DO_01`, de nuevo se espera 1 segundo y se apaga esta señal, a continuación se devuelve a un punto arriba. Cabe resaltar que cada estante tiene su propio `Wobj` para realizar modificaciones, no obstante, es posible copiar y pegar esta configuración mediante el flex pendant, que facilita la modificación.

``` RAPID
PROC SUP_IZQ()
    MoveJ SUP_IZQ_1,v100,z10,Ventosa\WObj:=Estante_SUP_IZQ;
    MoveJ SUP_IZQ_2,v100,z10,Ventosa\WObj:=Estante_SUP_IZQ;
    MoveJ SUP_IZQ_3,v100,z10,Ventosa\WObj:=Estante_SUP_IZQ;
    MoveJ SUP_IZQ_4,v100,z10,Ventosa\WObj:=Estante_SUP_IZQ;
    WaitTime 1;
    SetDO DO_02,1;
    MoveJ SUP_IZQ_5,v100,z10,Ventosa\WObj:=Estante_SUP_IZQ;
    MoveJ SUP_IZQ_6,v100,z10,Ventosa\WObj:=Estante_SUP_IZQ;
    MoveJ SUP_IZQ_7,v100,z10,Ventosa\WObj:=Estante_SUP_IZQ;
    MoveJ ReposicionamientoArriba,v100,z100,Ventosa\WObj:=Mundo;
    MoveJ ReposicionamientoDejar,v100,z100,Ventosa\WObj:=Mundo;
    WaitTime 1;
    SetDO DO_02,0;
    WaitTime 1;
    SetDO DO_01,1;
    WaitTime 1;
    SetDO DO_01,0;
    WaitTime 1;
    MoveJ ReposicionamientoArriba,v100,z100,Ventosa\WObj:=Mundo;
ENDPROC
PROC SUP_DER()
    MoveJ SUP_DER_1,v100,z10,Ventosa\WObj:=Estante_SUP_DER;
    MoveJ SUP_DER_2,v100,z10,Ventosa\WObj:=Estante_SUP_DER;
    MoveJ SUP_DER_3,v100,z10,Ventosa\WObj:=Estante_SUP_DER;
    MoveJ SUP_DER_4,v100,z10,Ventosa\WObj:=Estante_SUP_DER;
    WaitTime 1;
    SetDO DO_02,1;
    MoveJ SUP_DER_5,v100,z10,Ventosa\WObj:=Estante_SUP_DER;
    MoveJ SUP_DER_6,v100,z10,Ventosa\WObj:=Estante_SUP_DER;
    MoveJ SUP_DER_7,v100,z10,Ventosa\WObj:=Estante_SUP_DER;
    MoveJ ReposicionamientoArriba,v100,z100,Ventosa\WObj:=Mundo;
    MoveJ ReposicionamientoDejar,v100,z100,Ventosa\WObj:=Mundo;
    WaitTime 1;
    SetDO DO_02,0;
    WaitTime 1;
    SetDO DO_01,1;
    WaitTime 1;
    SetDO DO_01,0;
    WaitTime 1;
    MoveJ ReposicionamientoArriba,v100,z100,Ventosa\WObj:=Mundo;
ENDPROC
PROC MED_IZQ()
    MoveJ MED_IZQ_1,v100,z10,Ventosa\WObj:=Estante_MED_IZQ;
    MoveJ MED_IZQ_2,v100,z10,Ventosa\WObj:=Estante_MED_IZQ;
    MoveJ MED_IZQ_3,v100,z10,Ventosa\WObj:=Estante_MED_IZQ;
    MoveJ MED_IZQ_4,v100,z10,Ventosa\WObj:=Estante_MED_IZQ;
    WaitTime 1;
    SetDO DO_02,1;
    MoveJ MED_IZQ_5,v100,z10,Ventosa\WObj:=Estante_MED_IZQ;
    MoveJ MED_IZQ_6,v100,z10,Ventosa\WObj:=Estante_MED_IZQ;
    MoveJ MED_IZQ_7,v100,z10,Ventosa\WObj:=Estante_MED_IZQ;
    MoveJ ReposicionamientoArriba,v100,z100,Ventosa\WObj:=Mundo;
    MoveJ ReposicionamientoDejar,v100,z100,Ventosa\WObj:=Mundo;
    WaitTime 1;
    SetDO DO_02,0;
    WaitTime 1;
    SetDO DO_01,1;
    WaitTime 1;
    SetDO DO_01,0;
    WaitTime 1;
    MoveJ ReposicionamientoArriba,v100,z100,Ventosa\WObj:=Mundo;
ENDPROC
PROC MED_DER()
    MoveJ MED_DER_1,v100,z10,Ventosa\WObj:=Estante_MED_DER;
    MoveJ MED_DER_2,v100,z10,Ventosa\WObj:=Estante_MED_DER;
    MoveJ MED_DER_3,v100,z10,Ventosa\WObj:=Estante_MED_DER;
    MoveJ MED_DER_4,v100,z10,Ventosa\WObj:=Estante_MED_DER;
    WaitTime 1;
    SetDO DO_02,1;
    MoveJ MED_DER_5,v100,z10,Ventosa\WObj:=Estante_MED_DER;
    MoveJ MED_DER_6,v100,z10,Ventosa\WObj:=Estante_MED_DER;
    MoveJ MED_DER_7,v100,z10,Ventosa\WObj:=Estante_MED_DER;
    MoveJ ReposicionamientoArriba,v100,z100,Ventosa\WObj:=Mundo;
    MoveJ ReposicionamientoDejar,v100,z100,Ventosa\WObj:=Mundo;
    WaitTime 1;
    SetDO DO_02,0;
    WaitTime 1;
    SetDO DO_01,1;
    WaitTime 1;
    SetDO DO_01,0;
    WaitTime 1;
    MoveJ ReposicionamientoArriba,v100,z100,Ventosa\WObj:=Mundo;
ENDPROC
PROC INF_DER()
    MoveJ INF_DER_1,v100,z10,Ventosa\WObj:=Estante_INF_DER;
    MoveJ INF_DER_2,v100,z10,Ventosa\WObj:=Estante_INF_DER;
    MoveJ INF_DER_3,v100,z10,Ventosa\WObj:=Estante_INF_DER;
    MoveJ INF_DER_4,v100,z10,Ventosa\WObj:=Estante_INF_DER;
    WaitTime 1;
    SetDO DO_02,1;
    MoveJ INF_DER_5,v100,z10,Ventosa\WObj:=Estante_INF_DER;
    MoveJ INF_DER_6,v100,z10,Ventosa\WObj:=Estante_INF_DER;
    MoveJ INF_DER_7,v100,z10,Ventosa\WObj:=Estante_INF_DER;
    MoveJ ReposicionamientoArriba,v100,z100,Ventosa\WObj:=Mundo;
    MoveJ ReposicionamientoDejar,v100,z100,Ventosa\WObj:=Mundo;
    WaitTime 1;
    SetDO DO_02,0;
    WaitTime 1;
    SetDO DO_01,1;
    WaitTime 1;
    SetDO DO_01,0;
    WaitTime 1;
    MoveJ ReposicionamientoArriba,v100,z100,Ventosa\WObj:=Mundo;
ENDPROC
PROC INF_IZQ()
    MoveJ INF_IZQ_1,v100,z10,Ventosa\WObj:=Estante_INF_IZQ;
    MoveJ INF_IZQ_2,v100,z10,Ventosa\WObj:=Estante_INF_IZQ;
    MoveJ INF_IZQ_3,v100,z10,Ventosa\WObj:=Estante_INF_IZQ;
    MoveJ INF_IZQ_4,v100,z10,Ventosa\WObj:=Estante_INF_IZQ;
    WaitTime 1;
    SetDO DO_02,1;
    MoveJ INF_IZQ_5,v100,z10,Ventosa\WObj:=Estante_INF_IZQ;
    MoveJ INF_IZQ_6,v100,z10,Ventosa\WObj:=Estante_INF_IZQ;
    MoveJ INF_IZQ_7,v100,z10,Ventosa\WObj:=Estante_INF_IZQ;
    MoveJ ReposicionamientoArriba,v100,z100,Ventosa\WObj:=Mundo;
    MoveJ ReposicionamientoDejar,v100,z100,Ventosa\WObj:=Mundo;
    WaitTime 1;
    SetDO DO_02,0;
    WaitTime 1;
    SetDO DO_01,1;
    WaitTime 1;
    SetDO DO_01,0;
    WaitTime 1;
    MoveJ ReposicionamientoArriba,v100,z100,Ventosa\WObj:=Mundo;
ENDPROC
```

La trayectoria `Piso_Subir_Asa` corresponde a una primera consideración que no se llevó a cabo prácticamente, que implica subir el asa del balde para poder mover de nuevo el balde, una vez se hubiera bajado esta asa previamiente.

``` RAPID
PROC Piso_Subir_Asa()
    MoveJ Subiendo_Asa_1,v50,z10,Gancho\WObj:=Mundo;
    MoveJ Subiendo_Asa_2,v50,z10,Gancho\WObj:=Mundo;
    MoveJ Subiendo_Asa_3,v50,z10,Gancho\WObj:=Mundo;
    MoveJ Subiendo_Asa_4,v50,z10,Gancho\WObj:=Mundo;
    MoveJ Subiendo_Asa_5,v50,z10,Gancho\WObj:=Mundo;
ENDPROC
```

La trayectoria `Piso2Banda` corresponde al movimiento del balde desde el punto donde recibe las piezas, hasta la banda. Empieza por acercarce al balde en el punto `Dejar_Balde_Piso_2`, toma el balde con `Vertical_Balde_Piso2`. Con los demás puntos se traslada en el espacio hasta el punto de colocación del balde. Las instrucciones `Horizontal/Vertical_Balde_Banda_2` Corresponden a cuando el balde ya se encuentra en la banda y se separa el Gancho del mismo. La instrucción termina en `CercaBanda_2`.

``` RAPID
PROC Piso2Banda()
    MoveAbsJ Home,v100,z100,tool0\WObj:=wobj0;
    MoveJ Dejar_Balde_Piso_2,v100,z10,Gancho\WObj:=Mundo;
    MoveJ Vertical_Balde_Piso_2,v100,z10,Gancho\WObj:=Mundo;
    MoveJ Posicion_Intermedia_Banda2Piso_2,v100,z10,Gancho\WObj:=Mundo;
    MoveJ Vertical_Balde_Banda_2,v50,z10,Gancho\WObj:=Mundo;
    MoveJ Horizontal_Balde_Banda_2,v100,z10,Gancho\WObj:=Mundo;
    MoveJ CercaBanda_2,v100,z10,Gancho\WObj:=Mundo;
    MoveAbsJ Home,v100,z100,tool0\WObj:=wobj0;
ENDPROC
```

Trayectoria que corresponde a superior izquierdo, derecho y medio izquierdo de la estantería.

``` RAPID
PROC Primeros3()
    Homing;
    Banda2Piso;
    SUP_IZQ;
    SUP_DER;
    MED_IZQ;
    Piso2Banda;
ENDPROC
```

Trayectoria que corresponde a medio derecho, inferior izquierdo y derecho de la estantería.

``` RAPID
PROC Ultimos3()
    Homing;
    Banda2Piso;
    MED_DER;
    INF_IZQ;
    INF_DER;
    Piso2Banda;
ENDPROC
```

### Comparación de tiempos de alistamiento y de operación

## Video Presentación
