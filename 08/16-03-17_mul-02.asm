; Ingresar dos digitos
; Sumarlos
; Resultado en pantalla
; El resultado restarlo con un digito de teclado
; Resultado en pantalla
; Resultado multiplicarlo con un digito del teclado
; Mostarlo en pantalla

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
mov cl,bl
;aam

; Imprimir resultado
mov ah,02
mov dl,bl
int 21h

; Imprimir '-'
mov ah,02
mov dl,045
int 21h

; Ingresar numero de la resta
mov ah,01
int 21h
sub al,30h
mov bl,al

; Imprimir '='
mov ah,02
mov dl,061
int 21h

; Restar los numeros
sub cl,bl
mov bl,cl
sub bl,30h
;aam

; Imprimir resultado
mov ah,02
mov cl,bl
mov dl,cl
add dl,30h
mov cl,dl
int 21h

; Imprimir '*'
mov ah,02
mov dl,042
int 21h

; Ingresar numero de la multiplicacion
mov ah,01
int 21h
sub al,30h
mov bl,al

; Imprimir '='
mov ah,02
mov dl,061
int 21h

; Multiplicar los numeros
mov al,cl
sub al,30h
mov dl,bl
mul dl
aam

; Imprimir resultado
mov ah,02
mov cl,al
add cl,30h
mov dl,cl
int 21h