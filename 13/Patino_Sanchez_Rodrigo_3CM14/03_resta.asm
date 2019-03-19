.model small
.data

; Cadenas

pedir     DB 'Numero: ','$'
salto     DB '',10,13,10,13,'$'
resultado DB 'Resultado: ','$'

; Variables

numero1 DB ?
numero2 DB ?
numero3 DB ?
numero4 DB ?
numero5 DB ?
numero6 DB ?
numero7 DB ?

; Codigo

.code

; Primer  numero

mov ax,@data
mov ds,ax
mov dx,offset pedir
mov ah,09h
int 21h
 
mov ah,01h
int 21h
sub al,30h
mov numero1,al
 

mov ax,@data
mov ds,ax
mov dx,offset salto
mov ah,09h
int 21h
; Segundo numero

mov ax,@data
mov ds,ax
mov dx,offset pedir
mov ah,09h
int 21h
 
mov ah,01h
int 21h
sub al,30h
mov numero2,al
 

mov ax,@data
mov ds,ax
mov dx,offset salto
mov ah,09h
int 21h
; Tercero numero

mov ax,@data
mov ds,ax
mov dx,offset pedir
mov ah,09h
int 21h
 
mov ah,01h
int 21h
sub al,30h
mov numero3,al
 

mov ax,@data
mov ds,ax
mov dx,offset salto
mov ah,09h
int 21h
; Cuarto  numero 

mov ax,@data
mov ds,ax
mov dx,offset pedir
mov ah,09h
int 21h
 
mov ah,01h
int 21h
sub al,30h
mov numero4,al
 

mov ax,@data
mov ds,ax
mov dx,offset salto
mov ah,09h
int 21h
; Quinto  numero

mov ax,@data
mov ds,ax
mov dx,offset pedir
mov ah,09h
int 21h
 
mov ah,01h
int 21h
sub al,30h
mov numero5,al
 

mov ax,@data
mov ds,ax
mov dx,offset salto
mov ah,09h
int 21h
; Sexto   numero 

mov ax,@data
mov ds,ax
mov dx,offset pedir
mov ah,09h
int 21h
 
mov ah,01h
int 21h
sub al,30h
mov numero6,al
 

mov ax,@data
mov ds,ax
mov dx,offset salto
mov ah,09h
int 21h
; Septimo numero 

mov ax,@data
mov ds,ax
mov dx,offset pedir
mov ah,09h
int 21h
 
mov ah,01h
int 21h
sub al,30h
mov numero7,al
 

mov ax,@data
mov ds,ax
mov dx,offset salto
mov ah,09h
int 21h

; Resta

mov bl,numero1
sub bl,numero2
sub bl,numero3
sub bl,numero4
sub bl,numero5
sub bl,numero6
sub bl,numero7
add bl,30h

; Resultado

mov ax,@data
mov ds,ax
mov dx,offset resultado
mov ah,09h
int 21h

mov dl,bl
mov ah,02h
int 21h