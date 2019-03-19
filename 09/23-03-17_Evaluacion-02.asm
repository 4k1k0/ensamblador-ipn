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
factorial DB 'FACTORIAL: ','$'
suma DB 'SUMA: ','$'
resta DB 'RESTA: ','$'




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
mov bh,al
sub bh,30h

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
mov ch,al
sub ch,30h

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
mov cl,al
sub cl,30h

mov ax,@data
mov ds,ax
mov dx,offset saltoL
mov ah,09h
int 21h

; Factorial n*(n-1)
;
; 3*2*1
mov dl,bh
sub dl,1
mov al,bh
mul dl
aam

sub dl,1
mul dl
aam
mov bh,al

mov ax,@data
mov ds,ax
mov dx,offset factorial
mov ah,09h
int 21h

mov ah,02h
mov dl,bh
add dl,30h
int 21h

mov ax,@data
mov ds,ax
mov dx,offset saltoL
mov ah,09h
int 21h

; Sumar
add bl,bh

mov ax,@data
mov ds,ax
mov dx,offset suma
mov ah,09h
int 21h

mov dl,bl
add dl,30h
mov ah,02h
int 21h

mov ax,@data
mov ds,ax
mov dx,offset saltoL
mov ah,09h
int 21h

; Resta
sub ch,cl

mov ax,@data
mov ds,ax
mov dx,offset resta
mov ah,09h
int 21h

mov dl,ch
add dl,30h
mov ah,02h
int 21h

mov ax,@data
mov ds,ax
mov dx,offset saltoL
mov ah,09h
int 21h