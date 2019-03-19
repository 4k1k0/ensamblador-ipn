; Todos los caracteres ASCII con sus valores dec y hex

.model small
.data

Msj    DB 'CODIGO ASCII',10,13,10,13,10,13,'$'

;            Esp Sig Esp
;            aci no  aci
;            o       o
suma   DB '',032,043,032,'$'
igual  DB '',032,061,032,'$'
saltoL DB '',010,013,010,013,'$'



.code

mov ax,@data
mov ds,ax
mov dx,offset Msj
mov ah,09h
int 21h

