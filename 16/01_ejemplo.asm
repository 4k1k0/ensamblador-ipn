; Macros
imprimir_cadena macro cadena
    mov ax,data
    mov ds,ax
    mov dx,offset cadena
    mov ah,09h
    int 21h
endm

imprimir_dato macro numero
    mov dl,numero
    add dl,30h
    mov ah,02h
    int 21h
endm

multiplicar macro a,b,resultado
    mov al,a
    mov bl,b
    mul bl
    mov resultado,al
endm

regla_horizontal macro posicion,numero
    mov ah,02h
    mov bh,00h
    mov dh,01h
    mov dl,posicion
    int 10h
    imprimir_dato numero
    
    add posicion,02h
    add numero,01h
endm

regla_vertical macro posicion,numero
    mov ah,02h
    mov bh,00h
    mov dh,posicion
    mov dl,01h
    int 10h
    imprimir_dato numero
    
    add posicion,02h
    add numero,01h
endm

.model small
.data

; Cadenas


altura    DB 'Altura: ','$'
base      DB 'Base: ','$'
diez      DB '10','$'
doce      DB '12','$'

; Variables

res1 DB ?
posH DB 3
posV DB 3
num  DB ?

.code

; Primer cuadrado
       
mov ah,06h
mov bh,84h
MOV CX, 0303h
MOV DX, 0608h 
int 10h
 

mov ah,02h
mov bh,00h
mov dh,04h
mov dl,09h
int 10h
imprimir_cadena altura ; 2
imprimir_dato 2

mov ah,02h
mov bh,00h
mov dh,07h
mov dl,04h
int 10h
imprimir_cadena base   ; 3
imprimir_dato 3

mov ah,02h
mov bh,00h
mov dh,04h
mov dl,04h
int 10h             
multiplicar 2,3,res1
imprimir_dato res1  ; Imprime <
;imprimir_cadena diez


; Segundo cuadro

mov ah,06h
mov bh,14h
MOV CX, 0711h
MOV DX, 0914h 
int 10h

mov ah,02h
mov bh,00h
mov dh,08h
mov dl,15h
int 10h
imprimir_cadena altura
imprimir_dato 2

mov ah,02h
mov bh,00h
mov dh,10
mov dl,11h
int 10h
imprimir_cadena base
imprimir_dato 2

mov ah,02h
mov bh,00h
mov dh,08h
mov dl,12h
int 10h
multiplicar 2,2,res1
imprimir_dato res1

; Tercer cuadro

mov ah,06h
mov bh,21h
mov ch,13
mov dh,18
mov cl,17
mov dl,24
int 10h      

mov ah,02h
mov bh,00h
mov dh,16
mov dl,25
int 10h
imprimir_cadena altura 
imprimir_dato 3

mov ah,02h
mov bh,00h
mov dh,19
mov dl,19
int 10h
imprimir_cadena base
imprimir_dato 4

mov ah,02h
mov bh,00h
mov dh,16
mov dl,14h
int 10h
multiplicar 3,4,res1
;imprimir_dato res1 ; Imprime ?
imprimir_cadena doce

; Cuarto cuadro

mov ah,06h
mov bh,52h   
mov ch,9
mov dh,12
mov cl,5
mov dl,10
int 10h  


mov ah,02h
mov bh,00h
mov dh,11
mov dl,12
int 10h
imprimir_cadena altura 
imprimir_dato 2

mov ah,02h
mov bh,00h
mov dh,13
mov dl,06h
int 10h
imprimir_cadena base
imprimir_dato 3

mov ah,02h
mov bh,00h
mov dh,11
mov dl,07h
int 10h
multiplicar 2,3,res1
imprimir_dato res1

; Hacer un rombo, un triango y la regla.

; Regla

mov ah,02h
mov bh,00h
mov dh,01h
mov dl,01h
int 10h
imprimir_dato 0

; Horizontal
mov ah,06h
mov bh,52h
mov cx,0001h
mov dx,0023h
int 10h

mov num,01h   
regla_horizontal posH,num
regla_horizontal posH,num
regla_horizontal posH,num
regla_horizontal posH,num
regla_horizontal posH,num
regla_horizontal posH,num
regla_horizontal posH,num
regla_horizontal posH,num
regla_horizontal posH,num
regla_horizontal posH,num
regla_horizontal posH,num
regla_horizontal posH,num
regla_horizontal posH,num
regla_horizontal posH,num
regla_horizontal posH,num
regla_horizontal posH,num
regla_horizontal posH,num

;Vertical
mov ah,06h
mov bh,33h
mov cx,0100h
mov dx,2000h
int 10h

mov num,01h
regla_vertical posV,num
regla_vertical posV,num
regla_vertical posV,num
regla_vertical posV,num
regla_vertical posV,num
regla_vertical posV,num
regla_vertical posV,num
regla_vertical posV,num
regla_vertical posV,num
regla_vertical posV,num                       
regla_vertical posV,num

; Triangulo

mov ah,06h
mov bh,92h   
mov ch,19
mov dh,19
mov cl,5
mov dl,10
int 10h

mov ah,06h
mov bh,92h   
mov ch,18
mov dh,18
mov cl,6
mov dl,9
int 10h

mov ah,06h
mov bh,92h   
mov ch,17
mov dh,17
mov cl,7
mov dl,8
int 10h

; Rombo

mov ah,06h
mov bh,21h   
mov ch,7
mov dh,7
mov cl,37
mov dl,38
int 10h

mov ah,06h
mov bh,21h   
mov ch,6
mov dh,6
mov cl,36
mov dl,39
int 10h

mov ah,06h
mov bh,21h   
mov ch,5
mov dh,5
mov cl,35
mov dl,40
int 10h

mov ah,06h
mov bh,21h   
mov ch,4
mov dh,4
mov cl,36
mov dl,39
int 10h

mov ah,06h
mov bh,21h   
mov ch,3
mov dh,3
mov cl,37
mov dl,38
int 10h 