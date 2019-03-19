.model small
.data

pedir DB 'INGRESE UN NUMERO: ','$'

suma  DB '+','$'
resta DB '-','$'
igual DB '=','$'

saltoL DB '',10,13,10,13,'$'

.code

; Primer numero
mov ax,@data
mov ds,ax
mov dx,offset pedir
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

; Segundo numero
mov ax,@data
mov ds,ax
mov dx,offset pedir
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

jmp sumar

sumar:
    add bh,bl
    mov dl,bh
    jmp imprimir
restar:
    sub bh,bl
    mov dl,bh
    jmp imprimir
imprimir:
    add dl,30h
    mov ah,02h
    int 21h
fin:
    .exit

