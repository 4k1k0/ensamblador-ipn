; Macros

imprimir_cadena macro cadena
    mov ax,data
    mov ds,ax
    mov dx,offset cadena
    mov ah,09h
    int 21h
endm

.model small
.data

; Cadenas

hola DB 'Hola','$'

; Variables

var1 DB 5h
var2 DB 23h
var3 DB ?
var4 DB 0

var5 DW 4567
var6 DW 1532h

; El mas grande es DD 

.code

imprimir_cadena hola 

; Investigar "Modos de Direccionamiento"
; 
; Lugar donde vamos a encontrar un dato pero
; manejando los registros.


; Direccionamiento implicito:
;  Depende solamente de la isntruccion, es decir, 
;  la instruccion no lleva parametros. Particularmente
;  en instrucciones que no accedan a memoria, o bien 
;  que tienen una forma especifica de accesarla. 


mov ah,[0000] ; Mover el registro 0000 a ah.
              ; Todo lo que esta entre corchetes
              ; se refiere a memoria.  
              
; Ejemplo: Un registro no guarda el valor de
;          una variable. 

mov ax,var1 ; Error.

org 100h
mov ax,var1 ; Ok