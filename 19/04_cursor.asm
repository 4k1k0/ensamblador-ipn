; Macros
mover_puntero macro X,Y
    mov ah,02h
    mov bh,00h
    mov dh,Y
    mov dl,X
    int 10h
endm   

imprimir_cadena macro cadena
    mov ax,data
    mov ds,ax
    mov dx,offset cadena
    mov ah,09h
    int 21h
endm

guardar_numero macro variable
    mov ah,01h
    int 21h
    sub al,30h
    mov variable,al
endm

.model small
.data

; Cadenas

msj_H DB 'H','$'
msj_o DB 'o','$'
msj_l DB 'l','$'
msj_a DB 'a','$'

msj_X DB '',10,13,'Elige la coordenada X: ','$'
msj_Y DB '',10,13,'Elige la coordenada Y: ','$'

texto DB 'El texto se posiciona en las coordenadas dadas','$'

; Variables

pos_X DB ?
pos_Y DB ?

.code

imprimir_cadena msj_H

mover_puntero 1,1
imprimir_cadena msj_o

mover_puntero 2,2
imprimir_cadena msj_l

mover_puntero 3,3
imprimir_cadena msj_a

imprimir_cadena msj_X
guardar_numero pos_X

imprimir_cadena msj_Y
guardar_numero pos_Y
      
mover_puntero pos_X,pos_Y
imprimir_cadena texto