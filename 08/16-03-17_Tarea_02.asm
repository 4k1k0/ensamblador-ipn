; Sume por lo menos 8 numeros de 1 digito. Imprimir resultados parciales.

.model small
.data

;                               \n    \n    \n
Msj    DB 'PROGRAMA DE SUMAS',10,13,10,13,10,13,'$'

;            Esp Sig Esp
;            aci no  aci
;            o       o
suma   DB '',032,043,032,'$'
igual  DB '',032,061,032,'$'
saltoL DB '',010,013,010,013,'$'



.code

mov ax,@data
mov ds,ax
mov dx,offset Msj
mov ah,09h
int 21h

; Primera
; -> Pedir numero
mov ah,01h
int 21h
sub al,30h
mov bl,al
; -> Mostrar +
mov ax,@data
mov ds,ax
mov dx,offset suma
mov ah,09h
int 21h
; -> Pedir numero
mov ah,01h
int 21h
sub al,30h
mov cl,al
; -> Mostrar =
mov ax,@data
mov ds,ax
mov dx,offset igual
mov ah,09h
int 21h
; -> Sumar
add bl,cl
; -> Mostrar resultado
mov dl,bl
add dl,30h
mov ah,02h
int 21h
; -> Salto de linea
mov ax,@data
mov ds,ax
mov dx,offset saltoL
mov ah,09h
int 21h


; Segunda
; -> Mostrar resultado anterior
mov dl,bl
add dl,30h
mov ah,02h
int 21h
; -> Mostrar +
mov ax,@data
mov ds,ax
mov dx,offset suma
mov ah,09h
int 21h
; -> Pedir numero 
mov ah,01h
int 21h
sub al,30h
mov cl,al
; -> Mostrar = 
mov ax,@data
mov ds,ax
mov dx,offset igual
mov ah,09h
int 21h
; -> Sumar
add bl,cl
; -> Mostrar resultado
mov dl,bl
add dl,30h
mov ah,02h
int 21h
; -> Salto de linea
mov ax,@data
mov ds,ax
mov dx,offset saltoL
mov ah,09h
int 21h

; Tercera
; -> Mostrar resultado anterior
mov dl,bl
add dl,30h
mov ah,02h
int 21h
; -> Mostrar + 
mov ax,@data
mov ds,ax
mov dx,offset suma
mov ah,09h
int 21h
; -> Pedir numero
mov ah,01h
int 21h
sub al,30h
mov cl,al
; -> Mostrar =  
mov ax,@data
mov ds,ax
mov dx,offset igual
mov ah,09h
int 21h
; -> Sumar
add bl,cl
; -> Mostrar resultado
add bl,30h
mov dl,bl
mov ah,02h
int 21h
; -> Salto de linea
mov ax,@data
mov ds,ax
mov dx,offset saltoL
mov ah,09h
int 21h

; Cuarta
; -> Mostrar resultado anterior
mov dl,bl
mov ah,02h
int 21h
; -> Mostrar + 
mov ax,@data
mov ds,ax
mov dx,offset suma
mov ah,09h
int 21h
; -> Pedir numero
mov ah,01h
int 21h
sub al,30h
mov cl,al
; -> Mostrar =  
mov ax,@data
mov ds,ax
mov dx,offset igual
mov ah,09h
int 21h
; -> Sumar
add bl,cl
; -> Mostrar resultado
mov dl,bl
mov ah,02h
int 21h
; -> Salto de linea
mov ax,@data
mov ds,ax
mov dx,offset saltoL
mov ah,09h
int 21h


; Quinta
; -> Mostrar resultado anterior
mov dl,bl
mov ah,02h
int 21h
; -> Mostrar + 
mov ax,@data
mov ds,ax
mov dx,offset suma
mov ah,09h
int 21h
; -> Pedir numero
mov ah,01h
int 21h
sub al,30h
mov cl,al
; -> Mostrar = 
mov ax,@data
mov ds,ax
mov dx,offset igual
mov ah,09h
int 21h
; -> Sumar
add bl,cl
; -> Mostrar resultado
mov dl,bl
mov ah,02h
int 21h
; -> Salto de linea
mov ax,@data
mov ds,ax
mov dx,offset saltoL
mov ah,09h
int 21h


; Sexta
; -> Mostrar resultado anterior
mov dl,bl
mov ah,02h
int 21h
; -> Mostrar + 
mov ax,@data
mov ds,ax
mov dx,offset suma
mov ah,09h
int 21h
; -> Pedir numero
mov ah,01h
int 21h
sub al,30h
mov cl,al
; -> Mostrar =  
mov ax,@data
mov ds,ax
mov dx,offset igual
mov ah,09h
int 21h
; -> Sumar
add bl,cl
; -> Mostrar resultado
mov dl,bl
mov ah,02h
int 21h
; -> Salto de linea
mov ax,@data
mov ds,ax
mov dx,offset saltoL
mov ah,09h
int 21h 


; Septima
; -> Mostrar resultado anterior
mov dl,bl
mov ah,02h
int 21h
; -> Mostrar + 
mov ax,@data
mov ds,ax
mov dx,offset suma
mov ah,09h
int 21h
; -> Pedir numero
mov ah,01h
int 21h
sub al,30h
mov cl,al
; -> Mostrar =  
mov ax,@data
mov ds,ax
mov dx,offset igual
mov ah,09h
int 21h
; -> Sumar
add bl,cl
; -> Mostrar resultado
mov dl,bl            
mov ah,02h
int 21h
; -> Salto de linea
mov ax,@data
mov ds,ax
mov dx,offset saltoL
mov ah,09h
int 21h


; Octava 
; -> Mostrar resultado anterior
mov dl,bl
mov ah,02h
int 21h
; -> Mostrar + 
mov ax,@data
mov ds,ax
mov dx,offset suma
mov ah,09h
int 21h
; -> Pedir numero
mov ah,01h
int 21h
sub al,30h
mov cl,al
; -> Mostrar = 
mov ax,@data
mov ds,ax
mov dx,offset igual
mov ah,09h
int 21h
; -> Sumar
add bl,cl
; -> Mostrar resultado
mov dl,bl
mov ah,02h
int 21h
; -> Salto de linea
mov ax,@data
mov ds,ax
mov dx,offset saltoL
mov ah,09h
int 21h