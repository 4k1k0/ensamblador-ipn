; Ingresar dos digitos
; Sumarlos
; Resultado en pantalla
; El resultado restarlo con un digito de teclado
; Resultado en pantalla
; Resultado multiplicarlo con un digito del teclado
; Mostarlo en pantalla

.model small
.data

Msj1 DB 'SUMA',010,013,010,'$'

;Msj2 DB '',010,'RESTA',010,013,010,'$'
; Sale muy raro

Msj2 DB 'RESTA',010,013,010,'$'

Msj3 DB 'MULTIPLICACION',010,013,010,'$'

;            Esp Sig Esp
;            aci no  aci
;            o       o
suma   DB '',032,043,032,'$'
resta  DB '',032,045,032,'$'
mult   DB '',032,042,032,'$'
igual  DB '',032,061,032,'$'
saltoL DB '',010,013,010,013,'$'



.code

; Suma
mov ax,@data
mov ds,ax
mov dx,offset Msj1
mov ah,09h
int 21h

; -> Pedir numero
mov ah,01
int 21h
sub al,30h
mov bl,al

; -> Mostrar '+'
mov ax,@data
mov ds,ax
mov dx,offset suma
mov ah,09h
int 21h
 
; -> Pedir numero
mov ah,01
int 21h
sub al,30h
mov cl,al

; -> Mostrar '='
mov ax,@data
mov ds,ax
mov dx,offset igual
mov ah,09h
int 21h

; -> Sumar
add cl,bl
add cl,30h

; -> Imprimir resultado
mov dl,cl
mov ah,02h
int 21h

; -> Salto de linea
mov ax,@data
mov ds,ax
mov dx,offset saltoL
mov ah,09h
int 21h


; Resta
mov ax,@data
mov ds,ax
mov dx,offset Msj2
mov ah,09h
int 21h

; -> Mostrar resultado anterior
mov dl,cl
mov ah,02h
int 21h

; -> Mostar '-'
mov ax,@data
mov ds,ax
mov dx,offset resta
mov ah,09h
int 21h

; -> Pedir numero
mov ah,01
int 21h
sub al,30h
mov bl,al

; -> Mostrar '='
mov ax,@data
mov ds,ax
mov dx,offset igual
mov ah,09h
int 21h

; -> Restar
mov al,cl
sub al,bl
sub al,30h
mov bl,al

; -> Mostrar resultado
mov dl,al
add dl,30h
mov ah,02h
int 21h

; -> Salto de linea
mov ax,@data
mov ds,ax
mov dx,offset saltoL
mov ah,09h
int 21h

; Multiplicacion
mov ax,@data
mov ds,ax
mov dx,offset Msj3
mov ah,09h
int 21h   

; -> Mostrar resultado anterior    
mov dl,bl
add dl,30h
mov cl,dl
mov ah,02h
int 21h

; -> Mostar '*'
mov ax,@data
mov ds,ax
mov dx,offset mult
mov ah,09h
int 21h

; -> Pedir numero
mov ah,01
int 21h
sub al,30h
mov cl,al

; -> Mostrar '='
mov ax,@data
mov ds,ax
mov dx,offset igual
mov ah,09h
int 21h

; -> Multiplicar
mov al,cl
mul bl
aam

; -> Mostrar resultado
mov dl,al
add dl,30h
mov ah,02h
int 21h