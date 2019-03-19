.model small
.data

pedir DB 'INGRESE UN NUMERO: ','$'

suma  DB '+','$'
resta DB '-','$'
igual DB '=','$'
mult  DB '*','$'
division DB '/','$'

saltoL DB '',10,13,10,13,'$'

; Variables
var1 DB ?
var2 DB ?
var3 DB ?

.code

; Ingresar un numero
mov ax,@data
mov ds,ax
mov dx,offset pedir
mov ah,09h
int 21h

mov ah,01h
int 21h
mov var1,al
sub var1,30h

mov ax,@data
mov ds,ax
mov dx,offset saltoL
mov ah,09h
int 21h

; Ingresar otro numero
mov ax,@data
mov ds,ax
mov dx,offset pedir
mov ah,09h
int 21h

mov ah,01h
int 21h
mov var2,al
sub var2,30h

mov ax,@data
mov ds,ax
mov dx,offset saltoL
mov ah,09h
int 21h

; Comparar
mov al,var1
mov bl,var2


cmp bl,al
je multiplicar
jne dividir


; Multiplicar

multiplicar:
    mul bl
    aam
    
    
    mov dl,al
    mov var3,al
    add dl,30h
    mov ah,02h
    int 21h
    
    jmp salida

; Dividir
dividir:
    ; Magia negra
    sub ax,ax
    mov al,var1

    div bl
        
    mov dl,al
    add dl,30h
    mov ah,02h
    int 21h
    
    jmp salida
    
; Salida
salida:
    .exit
    
    
