.model small
.data

; Cadenas

salto      DB '',10,13,'$'
iguales    DB 'Iguales','$'
diferentes DB 'Diferentes','$'

; Variables

var1 DB ?
var2 DB ?
var3 DB ?
var4 DB ?
var5 DB ?

; Codigo

.code


mov var1,0
mov var2,3

mov cl,0
mov ch,var2

mov bl,2
mov bh,3

comparar:
    
    mov cl,var1
    
    cmp cl,ch
    
    je salida
    jne cadena
    
cadena:
    cmp bl,bh
    jb  a ; bl < bh
    ja  b ; bl > bh
    
a:
    mov dl,bl
    jmp imprimir
b:
    mov dl,bh
    jmp imprimir
    
imprimir:

    mov ax,@data
    mov ds,ax
    mov dx,offset salto
    mov ah,09h
    int 21h
    
    mov dl,2
    
    mov ah,02h
    int 21h
    
    mov ah,02h
    int 21h
    
    mov ah,02h
    int 21h
    
    mov ah,02h
    int 21h
    
    
    jmp mensaje
    
mensaje: 
    cmp cl,ch
    je igual
    jne diferente
    
igual:
    mov ax,@data
    mov ds,ax
    mov dx,offset iguales
    mov ah,09h
    int 21h
    
    jmp salida
    
diferente:
    mov ax,@data
    mov ds,ax
    mov dx,offset diferentes
    mov ah,09h
    int 21h
    
    add cl,1
    
    jmp imprimir

salida:
    .exit