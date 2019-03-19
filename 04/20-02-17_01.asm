; **Funciones**
; 
; http://ict.udlap.mx/people/oleg/docencia/ASSEMBLER/asm_interrup_21.html
; 
; Necesitan de servicio, los servicios son las interrupciones.
; Las interrupciones que maneja ensamblador son comandos de DOS.
; 
; 01H: Funcion DOS que sirve para capturar del teclado.
; 
; Las funciones siempre van a quedar registradas en la parte alta
; de mi registro acumulador (AH)
; 
; Tres tipos de interrupciones:
;     -Enmascarables
;     -No Enmascarables 
;     -?
; 
; Si tecleo una letra A no estoy capturando una letra A,
; estoy capturando el valor hexadecimal de su caracter (41)
; Siempre se guarda en la parte baja del registro (AL)
; Siempre se guarda en hexadecimal.
; 
; 
; 
; 
; Probar con 2,4,8,1
; 
; Decimal  Hexadecimal
;    2          32
;    4          34
;    8          38
;    1          31
;
; Si al hexadecimal se le restan 30 da el decimal.
;  32-30=2
;  34-30=4
;  38-30=8
;  31-30=1
;                                  


mov ah,01
int 21h
mov bl,al
sub bl,30h

mov ah,01
int 21h
mov cl,al
sub cl,30h

mov ah,01
int 21h
mov dl,al
sub dl,30h

mov ah,01
int 21h
mov dh,al
sub dh,30h

mov ah,dh
add ah,cl
add ah,bl
sub ah,cl
add ah,cl
sub ax,ax
mov bx,ax
mov cx,ax
mov dx,ax
mov ah,31h
sub ah,30h
add ah,5d