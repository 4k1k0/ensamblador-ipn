; Cuadrado 5x5
; Color X -> Borde Y

; Cuadro con degradado
;

; Factorial 1-5



; Macros  

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

mover_puntero macro X,Y
    mov ah,02h
    mov bh,00h
    mov dh,Y
    mov dl,X
    int 10h
endm  

guardar_numero macro variable
    mov ah,01h
    int 21h
    sub al,30h
    mov variable,al
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

pedir DB '!: ','$'
resul DB '=','$'

; Variables

numeroA   DB ?
numeroB   DB ?
contador  DB 0
resultado DB ?

.code     


                       
cuadrado 4,4,4,11,87     ; T
cuadrado 11,11,4,11,87   ; B
cuadrado 4,11,4,4,87     ; L
cuadrado 4,11,11,11,87   ; R

cuadrado 5,10,5,10,37    ; Cuadrado completo

; Degradado

cuadrado 6,6,5,10,96
cuadrado 7,7,5,10,97
cuadrado 8,8,5,10,97
cuadrado 9,9,5,10,97
cuadrado 10,10,5,10,97

mover_puntero 5,7
imprimir_cadena pedir

guardar_numero numeroA
mov al,numeroA

jmp factorial

factorial:
    
    
    sub numeroA,1
    
    mov dl,numeroA
    mov numeroB,dl 
    
    mov bl,numeroB
    mul bl
    mov numeroB,al
    
    cmp bl,1
    je salida
    call factorial
    
salida:



mov numeroA,al
mover_puntero 7,8
imprimir_cadena resul    
imprimir_dato numeroA