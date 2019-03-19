imprimir_cadena macro cadena
    mov ax,data
    mov ds,ax
    mov dx,offset cadena
    mov ah,09h
    int 21h
endm

cuadrado macro y1,y2,x1,x2,color
    mov ah,06h
    mov bh,color   
    mov ch,y1
    mov dh,y2
    mov cl,x1
    mov dl,x2
    int 10h
endm

guardar_numero macro variable
    mov ah,01h
    int 21h
    mov variable,al
    sub variable,30h
endm              

imprimir_dato macro variable
    mov dl,variable
    add dl,30h
    mov ah,02h
    int 21h
endm

.model small
.data

; Cadenas

pedir  DB 'Ingresa un numero binario: ','$'
menuA  DB 'a) Desplazar a la derecha',10,13,'$'
menuB  DB 'b) Desplazar a la izquierda',10,13,'$'
menuC  DB 'c) Rotar a la derecha',10,13,'$'
menuD  DB 'd) Rotar a la izquierda',10,13,'$'
menuE  DB 'e) Regresar',10,13,'$'
prompt DB '> ','$'
salto  DB '',10,13,'$'

desplD DB 'Desplazar derecha','$'
desplI DB 'Desplazar izquierda','$'
rotarD DB 'Rotacion derecha','$'
rotarI DB 'Rotacion izquierda','$'
error_ DB 'Error','$'
final  DB 'Programa finalizado','$'

; Variables
numero1 DB ?
numero2 DB ?
numero3 DB ?
numero4 DB ?
numero5 DB ?
numero6 DB ?
numero7 DB ?
numero8 DB ?
menu    DB ?


.code

imprimir_cadena pedir 
imprimir_dato 0      ; numero1
imprimir_dato 0      ; numero2
imprimir_dato 0      ; numero3
imprimir_dato 0      ; numero4
imprimir_dato 0      ; numero5
guardar_numero numero6
guardar_numero numero7
guardar_numero numero8

cuadrado 10,11,1,2,22h   ; 1
cuadrado 10,11,4,5,22h   ; 2
cuadrado 10,11,7,8,22h   ; 3
cuadrado 10,11,10,11,22h ; 4
cuadrado 10,11,13,14,22h ; 5

cmp numero6,1
je cuadro6_1
jne cuadro6_0

cuadro6_1:
    cuadrado 10,11,16,17,82h ; 6
    cmp numero7,1
    je cuadro7_1
    jne cuadro7_0

cuadro6_0:
    cuadrado 10,11,16,17,22h ; 6
    cmp numero7,1
    je cuadro7_1
    jne cuadro7_0

cuadro7_1:
    cuadrado 10,11,19,20,82h ; 7
    cmp numero8,1
    je cuadro8_1
    jne cuadro8_0

cuadro7_0:
    cuadrado 10,11,19,20,22h ; 7
    cmp numero8,1
    je cuadro8_1
    jne cuadro8_0

cuadro8_1:
    cuadrado 10,11,22,23,82h ; 8
    jmp menu_imprimir

cuadro8_0:
    cuadrado 10,11,22,23,22h ; 8
    jmp menu_imprimir

menu_imprimir:
    imprimir_cadena salto
    imprimir_cadena menuA
    imprimir_cadena menuB
    imprimir_cadena menuC
    imprimir_cadena menuD
    imprimir_cadena menuE
    imprimir_cadena prompt
    guardar_numero menu
    add menu,30h
    
    cmp menu,97 ; a
    je  desplazar_derecha
    cmp menu,65 ; A
    je  desplazar_derecha
    
    cmp menu,98 ; b
    je  desplazar_izquierda
    cmp menu,66 ; B
    je  desplazar_izquierda
    
    cmp menu,99 ; c
    je rotar_derecha
    cmp menu,67 ; C
    je rotar_derecha
    
    
    cmp menu,100 ; d
    je rotar_izquierda
    cmp menu,68 ; D
    je rotar_izquierda
    
    cmp menu,101 ; e
    je salida
    
    jmp error
    
desplazar_derecha:
    imprimir_cadena salto
    imprimir_cadena desplD
    jmp salida
    
desplazar_izquierda:
    imprimir_cadena salto
    imprimir_cadena desplI
    jmp salida

rotar_derecha:
    imprimir_cadena salto
    imprimir_cadena rotarD
    cuadrado 10,11,22,23,22h ; 8
    cuadrado 10,11,1,2,82h   ; 1
    jmp salida
    
rotar_izquierda:
    imprimir_cadena salto
    imprimir_cadena rotarI
    cuadrado 10,11,22,23,22h ; 8
    jmp salida
    
error:
    imprimir_cadena salto
    imprimir_cadena error_

salida:
    imprimir_cadena salto
    imprimir_cadena final
    .exit

