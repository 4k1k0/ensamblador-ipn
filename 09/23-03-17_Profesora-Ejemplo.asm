.model small
.data 
var db 4
var1 db 10
var2 db ?

cad db 'hola mundo', 10,13, '$'   
var3 db ?
cad1 db 'querido grupo de LBN', 10,13,'$'
var4 db 14h
cad2 db 'de la ESIME', 10,13,'$'
.code
    mov ax, @data
    mov ds, ax
    mov dx, offset cad 
    mov ah,09 
    int 21h
    

    mov ah,01  
    int 21h
    sub al,30h
  ;  mov bl,al    
  mov var2, al
    
     mov ax, @data
    mov ds, ax
    mov dx, offset cad1 
    mov ah,09 
    int 21h    
    
    mov ah,01
    int 21h
    sub al,30h 
    
     mov ax, @data
    mov ds, ax
    mov dx, offset cad2 
    mov ah,09 
    int 21h   
    
    
    
    
