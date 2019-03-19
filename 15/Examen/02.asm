.model small
.data

; Cadenas

pedir  DB 'Ingrese un numero: ','$'

menu1  DB '1-4) Sumar',10,13,'$'
menu2  DB '5-9) Restar',10,13,'$'
menu3  DB '0) Multiplicar',10,13,'$'
menu4  DB 'Letra) Volver a intentar',10,13,'$'
promt  DB '> ','$'
salto  DB '',10,13,'$'
igual  DB '=','$'


; Variables

num1    DB ?
num2    DB ?
num3    DB ?
num4    DB ?
num5    DB ?
num6    DB ?
menu_op DB ?

cont    DB 0

; Codigo
.code

programa:
    jmp menu

menu:  
    mov ax,@data
    mov ds,ax
    mov dx,offset salto
    mov ah,09h
    int 21h
    
    mov ax,@data
    mov ds,ax
    mov dx,offset menu1
    mov ah,09h
    int 21h
    
    mov ax,@data
    mov ds,ax
    mov dx,offset salto
    mov ah,09h
    int 21h
    
    mov ax,@data
    mov ds,ax
    mov dx,offset menu2
    mov ah,09h
    int 21h
    
    mov ax,@data
    mov ds,ax
    mov dx,offset salto
    mov ah,09h
    int 21h
    
    mov ax,@data
    mov ds,ax
    mov dx,offset menu3
    mov ah,09h
    int 21h
    
    mov ax,@data
    mov ds,ax
    mov dx,offset salto
    mov ah,09h
    int 21h
    
    mov ax,@data
    mov ds,ax
    mov dx,offset promt
    mov ah,09h
    int 21h
    
    mov ah,01h
    int 21h
    mov menu_op,al
    
    mov bl,menu_op
    
    
    cmp bl,31h
    je suma
    cmp bl,32h
    je suma
    cmp bl,33h
    je suma
    cmp bl,34h
    je suma
    
    
    cmp bl,35h
    je resta
    cmp bl,36h
    je resta
    cmp bl,37h
    je resta
    cmp bl,38h
    je resta
    cmp bl,39h
    je resta
    
    cmp bl,30h
    je mult
    jmp programa
    

pedir_numero proc
    sub ax,ax
    
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
    mov num1,al
    
    
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
    mov num2,al
    
    ret
endp

resultado proc
    mov ax,@data
    mov ds,ax
    mov dx,offset salto
    mov ah,09h
    int 21h
    
    mov ax,@data
    mov ds,ax
    mov dx,offset igual
    mov ah,09h
    int 21h
    
    mov dl,num3
    mov ah,02h
    int 21h
    
    ret
endp

suma:
    call pedir_numero
    
    mov al,num1
    mov bl,num2
    
    add al,bl
    
    add al,30h
    mov num3,al
    call resultado
    
    jmp salida

resta:

    call pedir_numero
    
    mov al,num1
    mov bl,num2
    
    sub al,bl
    
    add al,30h
    mov num3,al
    call resultado
    
    jmp salida


mult:
    call pedir_numero
    
    mov al,num1
    mov bl,num2
    
    mul bl
    
    add al,30h
    mov num3,al
    call resultado
    
    jmp salida
    
salida:
    .exit
    

