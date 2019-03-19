.model small
.data

; Cadenas

titulo DB 'Ordenar los numeros',10,13,10,13,'$'
pedir  DB 'Ingrese seis numeros: ','$'
menu1  DB '1) Orden de menor a mayor',10,13,'$'
menu2  DB '2) Orden de mayor a menor',10,13,'$'
menu3  DB '0) Salir',10,13,'$'
promt  DB '> ','$'
orden  DB 'Los numeros han sido ordenados','$'
salto  DB '',10,13,10,13,'$'
error  DB 'IAMERRORIAMERRORIAMERRORIAMERRORIAMERROR','$'


; Variables

num1    DB ?
num2    DB ?
num3    DB ?
num4    DB ?
num5    DB ?
num6    DB ?
cont    DB 0
menu_op DB ?

; Codigo
.code

; Menu

menu:
    mov ax,@data
    mov ds,ax
    mov dx,offset titulo
    call imprimir
    mov dx,offset menu1
    call imprimir
    mov dx,offset menu2
    call imprimir
    mov dx,offset menu3
    call imprimir
    mov dx,offset promt
    call imprimir
    
    mov ah,01h
    int 21h
    mov menu_op,al
    
    cmp al,31h
    je pedir_n 
    cmp al,32h
    je pedir_n
    cmp al,30h
    je salida
    jne error_msj
    

; Pedir numeros y llamar funcion de orden correspondiente

pedir_n:
    call pedir_numeros
    mov al,menu_op
    cmp al,31h
    call or_me_ma
    cmp al,32h
    call or_ma_me
    
; Ordenar menor a mayor

or_me_ma proc
    
or_me_ma endp

; Ordenar mayor a menor

or_ma_me proc         
    
or_ma_me endp

; Error

error_msj:
    mov dx,offset salto
    call imprimir
    mov dx,offset error
    call imprimir
    mov dx,offset salto
    call imprimir
    
    jmp menu
    
; Imprimir

imprimir proc
    mov ah,09
    int 21h
    ret
imprimir endp

; Imprimir orden

imprimir_numeros proc
    
    mov dl,num1
    mov ah,02h
    int 21h
           
    mov dl,num2
    mov ah,02h
    int 21h
    
    mov dl,num3
    mov ah,02h
    int 21h
    
    mov dl,num4
    mov ah,02h
    int 21h
    
    mov dl,num5
    mov ah,02h
    int 21h
    
    mov dl,num6
    mov ah,02h
    int 21h
    
    ret
imprimir_numeros endp

; Pedir los numeros

pedir_numeros proc
    
    mov dx,offset salto
    call imprimir
    mov dx,offset pedir
    call imprimir
    
    mov ah,01h
    int 21h
    mov num1,al
    mov ah,01h
    int 21h
    mov num2,al
    mov ah,01h
    int 21h
    mov num3,al
    mov ah,01h
    int 21h
    mov num4,al
    mov ah,01h
    int 21h
    mov num5,al
    mov ah,01h
    int 21h
    mov num6,al 
    
    ret
pedir_numeros endp

; Salida

salida:
    .exit