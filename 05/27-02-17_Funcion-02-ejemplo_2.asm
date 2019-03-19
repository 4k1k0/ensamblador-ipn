; Funcion 02
; Sumar dos numeros


; Obtener primer numero
mov ah,01
int 21h
sub al,30h
mov bl,al

; Obtener segundo numero
mov ah,01
int 21h
sub al,30h

; Realizar suma
add bl,al
add bl,30h


; Imprimir resultado
mov ah,02
mov dl,bl
int 21h