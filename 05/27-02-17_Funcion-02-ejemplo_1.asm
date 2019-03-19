; Funcion 02


mov bl,3     ; El 3 en ASCII, un corazon
add bl,30h   ; Si le sumo 30h se convierte en el caracter '3'

mov ah,02
mov dl,bl
int 21h