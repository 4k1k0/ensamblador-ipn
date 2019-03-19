.model small
.data

; Cadenas

pedir     DB 'Ingrese un numero: ','$'
salto     DB '',10,13,'$'
igual     DB 'Los numeros son iguales','$'
diferente DB 'Los numeros son diferentes','$'

; Variables

var1 DB ?
var2 DB ?
var3 DB ?

; Codigo
.code

mov ax,@data
mov ds,ax
mov dx,offset pedir
mov ah,09h
int 21h

mov ah,01h
int 21h
sub al,30h
mov var1,al

mov ax,@data
mov ds,ax
mov dx,offset salto
mov ah,09h
int 21h

mov ax,@data
mov ds,ax
mov dx,offset pedir
mov ah,09h
int 21h

mov ah,01h
int 21h
sub al,30h
mov var2,al

mov ax,@data
mov ds,ax
mov dx,offset salto
mov ah,09h
int 21h

comparar:
    mov bh,var1
    mov bl,var2
    
    mov cl,1
    mov ch,4
    
    cmp bl,bh
    je iguales
    jne diferentes
    
    

iguales:
    
    mov ax,@data
    mov ds,ax
    mov dx,offset igual
    mov ah,09h
    int 21h
    
    mov dl,var1
    mov var3,dl
    
    jmp contador

diferentes:
    
    mov ax,@data
    mov ds,ax
    mov dx,offset diferente
    mov ah,09h
    int 21h
    
    mov dl,var2
    mov var3,dl
    
    jmp contador
    
contador:

    cmp cl,ch
    jne imprimir
    je salida

imprimir:
    
    mov ax,@data
    mov ds,ax
    mov dx,offset salto
    mov ah,09h
    int 21h
    
    mov dl,var3
    mov ah,02h
    int 21h
    mov dl,var3
    mov ah,02h
    int 21h
    mov dl,var3
    mov ah,02h
    int 21h
    
    add cl,1
    jmp contador    

salida:
    .exit