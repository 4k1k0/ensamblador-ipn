
Org 100h

JMP Inicio:

Inicio:
    call Capturar
    call Guardar1
    
    call Capturar
    call Guardar2
    
    call Mostrar


Capturar:
    mov ah,1
    int 21h
    sub al,30h
    ret
    
Mostrar:
    mov ah,2
    mov dl,bl
    add dl,30h
    int 21h
    ret
    
Guardar1:
    mov bl,al
    ret

Guardar2:
    mov cl,al
    ret

Sumar:
    add bl,cl
    ret