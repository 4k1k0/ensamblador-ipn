; CURP
; PASR92 0914HD FTND03

; Pedir letras
mov ah,01
int 21h
mov ah,01
int 21h
mov ah,01
int 21h
mov ah,01
int 21h

; Mostrar 9
mov ah,02
mov dl,9
add dl,30h
int 21h

; Mostrar +
mov ah,02
mov dl,043
int 21h

; Mostrar 2
mov ah,02
mov dl,2
add dl,30h
int 21h

; Imprimir '='
mov ah,02
mov dl,061
int 21h

; 9+2
mov al,9
add al,30h
mov bl,2
add bl,30h
mov ah,al
add ah,bl
mov bh,ah

; Imprimir resultado
mov ah,02
mov dl,11
;add dl,30h
int 21h




; Mostrar 1
mov ah,02
mov dl,1
add dl,30h
int 21h

; Mostrar +
mov ah,02
mov dl,043
int 21h

; Mostrar 4
mov ah,02
mov dl,4
add dl,30h
int 21h

; Imprimir '='
mov ah,02
mov dl,061
int 21h

; 1+4
mov al,1
add al,30h
mov bl,4
add bl,30h
mov ah,al
add ah,bl
mov bh,ah

; Imprimir resultado
mov ah,02
mov dl,bh
add dl,30h
int 21h 
