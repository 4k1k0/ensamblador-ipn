.model small
.data

pedir DB 'INGRESE UN NUMERO: ','$'

suma  DB '+','$'
resta DB '-','$'
igual DB '=','$'
mult  DB '*','$'
division DB '/','$'

nueve DB '9','$'

saltoL DB '',10,13,10,13,'$'

binario DB 'BINARIO: ','$'

; Variables
var1 DB ?
var2 DB ?
var3 DB ?
var4 DB ?
var5 DB ?
var6 DB ?

bin1 DB ?
bin2 DB ?
bin3 DB ?
bin4 DB ?
bin5 DB ?

.code



; 9 / 2 = 4.5

mov ah,01h
int 21h
sub al,30h
mov var1,al


mov ah,01h
int 21h
sub al,30h
mov var2,al

sub ax,ax

mov al,var1
mov bl,var2

div bl

mov bin1,ah
add bin1,30h

; 4 / 2 = 2.0

mov var2,al

mov ah,01h
int 21h
sub al,30h
mov var3,al

sub ax,ax

mov al,var2
mov bl,var3

div bl

mov bin2,ah
add bin2,30h

; 2 / 2 = 1.0

mov var3,al

mov ah,01h
int 21h
sub al,30h
mov var4,al

sub ax,ax

mov al,var3
mov bl,var4

div bl

mov bin3,ah
add bin3,30h

; 1 / 2 = 0.5

mov var4,al

mov ah,01h
int 21h
sub al,30h
mov var5,al

sub ax,ax

mov al,var4
mov bl,var5

div bl

mov bin4,ah
add bin4,30h

; Imprimir el binario




mov bl,bin1
mov dl,bl
mov ah,02h
int 21h
mov bl,bin2
mov dl,bl
mov ah,02h
int 21h
mov bl,bin3
mov dl,bl
mov ah,02h
int 21h
mov bl,bin4
mov dl,bl
mov ah,02h
int 21h

