; Imprimir una cadena de caracteres en la consola
; utilizando la instruccion 09


.model small    
.data
Mensaje1 DB 'Hello World$'
Mensaje2 DB '\nHola$'


.code

mov ax, @data
mov ds, ax
mov dx, offset Mensaje1
mov ah, 09h
int 21h


mov ax, @data
mov ds, ax
mov dx, offset Mensaje2
mov ah, 09h
int 21h