.model small
.data     

nombre1 db 'Ingrese el primer dato',10,13, '$'  
nombre2 db 'Ingrese el segundo dato' ,10,13, '$'

.code 

    mov ax, @data
    mov ds,ax
              
    mov dx, offset nombre1
    mov ah,09
    int 21h 
    
    mov ah,01
    int 21h  
    sub al,30h 
    mov bl,al 
    
    mov dx, offset nombre2
    mov ah,,09
    int 21h
    
    mov ah,01
    int 21h
    sub al,30h
   