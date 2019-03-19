mov al,4
mov bl,3

mul bl
; mul = multiplicacion
; poner los valores de los operandos
; en la parte baja de los registros.
; Se puede en la alta, pero hacerlo
; en la baja.
;
; El resultado saldra en hex 0C
;
; Si quiero que salga en dec necesito
; poner aam, el resultado saldra en
; dos partes AH(01) AL(02)
aam
