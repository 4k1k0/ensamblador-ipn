.model small
.data

; Cadenas

pedir DB 'Ingrese un numero: ','$'
salto DB '',10,13,10,13,'$'
n_positivo DB 'El numero es positivo','$'
n_negativo DB 'El numero es negativo','$'
; Variables

var1 DB ?
var2 DB ?
var3 DB ?
var4 DB ?

.code

mov ax,@data
mov ds,ax
mov dx,offset pedir
mov ah,09h
int 21h

mov ah,01h
int 21h
sub al,30h
mov var1,al



mov ah,01h
int 21h
sub al,30h
mov var2,al

mov ah,01h
int 21h
sub al,30h
mov var3,al

mov ax,@data
mov ds,ax
mov dx,offset salto
mov ah,09h
int 21h

mov al,var1
mov bl,0

xor al,bl

cmp bl,al

je positivo
jne negativo

positivo:

    mov ax,@data
    mov ds,ax
    mov dx,offset n_positivo
    mov ah,09h
    int 21h
    
    jmp salida
    
negativo:

    mov ax,@data
    mov ds,ax
    mov dx,offset n_negativo
    mov ah,09h
    int 21h
    
    jmp salida
    
salida:
    .exit
    