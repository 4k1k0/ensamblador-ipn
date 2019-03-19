; Funcion 02
; Sumar dos numeros


; Obtener primer numero
mov ah,01
int 21h
sub al,30h
mov bl,al

; Imprimir '+'
mov ah,02
mov dl,043
int 21h

; Obtener segundo numero
mov ah,01
int 21h
sub al,30h
mov bh,al

; Imprimir '='
mov ah,02
mov dl,061
int 21h

; Realizar suma
add bl,bh
add bl,30h


; Imprimir resultado
mov ah,02
mov dl,bl
int 21h