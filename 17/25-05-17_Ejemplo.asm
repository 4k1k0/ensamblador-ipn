; Leer lo que hay en una parte de la pantalla.
; con una instruccion int 10

; Una instruccion de intercambio

.model small
.data


.code

mov bl,3
mov cl,5

xchg bl,cl

