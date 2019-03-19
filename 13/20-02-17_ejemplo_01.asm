.model small
.data

; Cadenas

; Variables

var1 DB ?
var2 DB ?
var3 DB ?
var4 DB ?
var5 DB ?

; Codigo

.code

mov ah,01h
int 21h
aas
mov var1,al
mov bl,al

mov ah,01h
int 21h
aas
mov var2,al

cmp al,bl

jb menor
jne diferente

cmp al,bl

menor:
    add bl,al
    .exit
diferente:
    sub bl,al
    .exit
.exit