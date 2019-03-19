; Evaluacion
; 
; Ingresar 4 valores desde el teclado. No usar variables
; 
; Al primero de ellos obtener el factorial
; 
; Al segundo sumarle el resultado anterior
;
; Tercero y cuarto sumarlos entre si.

.model small
.data

titulo  DB 'EJERCICIO DE EVALUACION',10,13,10,13,'$'
ingresa DB 'INGRESA UN NUMERO: ','$'
saltoL  DB '',10,13,10,13,'$'

numero1 DB ?
numero2 DB ?
numero3 DB ?
numero4 DB ?


.code

; Titulo
mov ax,@data
mov ds,ax
mov dx,offset titulo
mov ah,09h
int 21h

; Obtener primer numero
mov ax,@data
mov ds,ax
mov dx,offset ingresa
mov ah,09h
int 21h

mov ah,01h
int 21h
mov bl,al
sub bl,30h
mov numero1,bl

mov ax,@data
mov ds,ax
mov dx,offset saltoL
mov ah,09h
int 21h

; Obtener segundo numero
mov ax,@data
mov ds,ax
mov dx,offset ingresa
mov ah,09h
int 21h

mov ah,01h
int 21h
mov bl,al
sub bl,30h
mov numero2,bl

mov ax,@data
mov ds,ax
mov dx,offset saltoL
mov ah,09h
int 21h

; Obtener tercer numero
mov ax,@data
mov ds,ax
mov dx,offset ingresa
mov ah,09h
int 21h

mov ah,01h
int 21h
mov bl,al
sub bl,30h
mov numero3,bl

mov ax,@data
mov ds,ax
mov dx,offset saltoL
mov ah,09h
int 21h

; Obtener cuarto numero
mov ax,@data
mov ds,ax
mov dx,offset ingresa
mov ah,09h
int 21h

mov ah,01h
int 21h
mov bl,al
sub bl,30h
mov numero4,bl

mov ax,@data
mov ds,ax
mov dx,offset saltoL
mov ah,09h
int 21h

; Factorial n*(n-1)