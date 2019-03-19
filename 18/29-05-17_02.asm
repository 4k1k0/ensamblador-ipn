.model small
.data

; Cadenas

hola DB 'Hola','$'

; Variables

var1 DB 5h
var2 DB 23h
var3 DB ?
var4 DB 0

var5 DW 4567
var6 DW 1532h

.code

mov ax,@data
mov ds,ax
mov dx,offset hola
mov ah,09h
int 21h
           
xor ax,ax ; Esto se hace para asegurarse
xor bx,bx ; que en el registro no va
xor cx,cx ; haber nada.
xor dx,dx

mov bl,2h   ; En el registro bl queda 02
mov al,[bx] ; En el registro al queda 6C

mov bx,00h
mov al,[bx] ; H ascii 48

mov bx,01h
mov al,[bx] ; o ascii 6F

mov bx,02h
mov al,[bx] ; l ascii 6C

mov bx,03h
mov al,[bx] ; a ascii 61