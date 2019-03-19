imprimir_m macro mensaje
    mov ax,data
    mov ds,ax
    mov dx,offset mensaje
    mov ah,09h
    int 21h
endm

imprimir_c macro caracter
    mov dl,caracter
    mov ah,02h
    int 21h
endm

guardar macro variable
    mov ah,01h
    int 21h
    sub al,30h
    mov variable,al
endm


.model small
.data

pedir DB 'Ingresa un numero: ','$'
salto DB '',10,13,'$'

var1  DB ?
cont1 DB 0
cont2 DB 0

.code


imprimir_m pedir
guardar var1
imprimir_m salto
imprimir_m salto
call cuadro_h

cuadro_h proc
    imprimir_c var1
    add cont1,1
    mov bl,cont1
    cmp bl,var1
    jne cuadro_h
endp

cuadro_v proc
    imprimir_m salto
    mov cont1,0
    add cont2,1
    mov bl,cont2
    cmp bl,var1
    jne cuadro_h
    je salida 
endp

salida:
    .exit