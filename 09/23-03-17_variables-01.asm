; Memoria
; 
; Caja paso a paso > View > Memory
;
; Variables
; 
; var0 db ?   <-- Valor no definido
; var1 db 4   <-- Valor definido
; var2 db 10  <-- Valor definido
;

.model small
.data

msj1 DB 'Ejercicio de variables',10,13,10,13,'$'
msj2 DB '',10,13,10,13,'Variable 1',10,13,10,13,'$'
msj3 DB '',10,13,10,13,'Variable 2',10,13,10,13,'$'

var1 DB 4
var2 DB ?


.code

; Imprimir cadena
mov ax,@data
mov ds,ax
mov dx,offset msj1
mov ah,09h
int 21h

; Imprimir variable
mov ax,@data
mov ds,ax
mov dx,offset msj2
mov ah,09h
int 21h
mov al,var1
add al,30h
mov dl,al
mov ah,02h
int 21h

; Imprimir variable
mov ax,@data
mov ds,ax
mov dx,offset msj3
mov ah,09h
int 21h
mov var2,9
mov al,var2
add al,30h
mov dl,al
mov ah,02h
int 21h