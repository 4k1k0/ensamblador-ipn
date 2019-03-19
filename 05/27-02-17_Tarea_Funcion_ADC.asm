; ADC destino,origen
; (ADdition with Carry, sumar con acarreo) {O,S,Z,A,P,C}
;
; Suma origen, destino y el bit de carry, guardando el resultado en destino.
; Sirve entre otras cosas para sumar numeros de mas de 16 bits
; arrastrando el bit de carry de una suma a otra.
; 
; Si quisieramos sumar dos numeros enteros de 64 bits almacenados en
; EAX-EBX y ECX-EDX, podriamos sumarlos con
; ADD EBX,EDX primero y ADC EAX,ECX despues
; (para sumar las partes altas de 32 bits con "la que nos llevabamos" de
; las partes bajas).
; 
; Sumar con ADC puede generar a su vez carry, con lo que
; teoricamente podriamos sumar numeros enteros de cualquier tamaNo, propagando
; el carry de una suma a otra.
; 
; Podemos poner a 1 el flag de carry directamente mediante STC (SeT Carry)
; o a 0 mediante CLC (CLear Carry), ambas instrucciones sin argumentos.
; 
; ............................................................................
; 
; ADC destino, fuente
; Lleva a cabo la suma de dos operandos y suma uno al resultado en caso
; de que la bandera CF esté activada, esto es, en caso de que exista acarreo.
; El resultado se guarda en el operando destino.