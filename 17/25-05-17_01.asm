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

imprimir_numero macro pos,num,variable
    mov ah,02h
    mov bh,00h
    mov dh,10
    mov dl,pos
    int 10h
    imprimir_dato num
    
    mov variable,num
    
    add pos,03h
    add num,01h
endm

mover_puntero macro posicion
    mov ah,02h
    mov bh,00h
    mov dh,posicion
    mov dl,00h
    int 10h
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
numero1  DB ?
numero2  DB ?
numero3  DB ?
numero4  DB ?
numero5  DB ?
numero6  DB ?
numero7  DB ?
numero8  DB ?
menu     DB ?

posicion DB 1
numeroCu DB 1

numText1 DB ?
numText2 DB ?
numText3 DB ?
numText4 DB ?
numText5 DB ?
numText6 DB ?
numText7 DB ?
numText8 DB ?


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

cuadrado 10,11,1,2,28h   ; 1
cuadrado 10,12,4,5,28h   ; 2
cuadrado 10,13,7,8,28h   ; 3
cuadrado 10,14,10,11,28h ; 4
cuadrado 10,15,13,14,28h ; 5

cmp numero6,1
je cuadro6_1
jne cuadro6_0

cuadro6_1:
    cuadrado 10,16,16,17,82h ; 6
    cmp numero7,1
    je cuadro7_1
    jne cuadro7_0

cuadro6_0:
    cuadrado 10,16,16,17,28h ; 6
    cmp numero7,1
    je cuadro7_1
    jne cuadro7_0

cuadro7_1:
    cuadrado 10,17,19,20,82h ; 7
    cmp numero8,1
    je cuadro8_1
    jne cuadro8_0

cuadro7_0:
    cuadrado 10,17,19,20,28h ; 7
    cmp numero8,1
    je cuadro8_1
    jne cuadro8_0

cuadro8_1:
    cuadrado 10,18,22,23,82h ; 8
    jmp menu_imprimir

cuadro8_0:
    cuadrado 10,18,22,23,28h ; 8
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
    
    imprimir_numero posicion,numeroCu,numText1
    imprimir_numero posicion,numeroCu,numText2
    imprimir_numero posicion,numeroCu,numText3
    imprimir_numero posicion,numeroCu,numText4
    imprimir_numero posicion,numeroCu,numText5
    imprimir_numero posicion,numeroCu,numText6
    imprimir_numero posicion,numeroCu,numText7
    imprimir_numero posicion,numeroCu,numText8
    
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
    mover_puntero 7
    imprimir_cadena desplD
    jmp salida
    
desplazar_izquierda:     
    mover_puntero 7
    imprimir_cadena desplI
    jmp salida

rotar_derecha:           
    mover_puntero 7
    imprimir_cadena rotarD      
    cuadrado 10,18,22,23,02h ; 8
    cuadrado 10,11,22,23,28h ; 8
    cuadrado 10,18,1,2,82h   ; 1
    
    mov numeroCu,1
    mov posicion,1                   
    
    imprimir_numero posicion,numeroCu
    imprimir_numero posicion,numeroCu
    imprimir_numero posicion,numeroCu
    imprimir_numero posicion,numeroCu
    imprimir_numero posicion,numeroCu
    imprimir_numero posicion,numeroCu
    imprimir_numero posicion,numeroCu
    imprimir_numero posicion,numeroCu
    
    jmp salida
    
rotar_izquierda:          
    mover_puntero 7
    imprimir_cadena rotarI
    cuadrado 10,18,22,23,22h ; 8
    jmp salida
    
error:
    mover_puntero 7
    imprimir_cadena error_

salida:
    mover_puntero 8
    imprimir_cadena final
    .exit

