; h -> Hexadecimal
; d -> Decimal
; o -> Octal
; b -> Binario

mov al, 0000h
mov ax, 1010101111010111b
mov ax, 0000
mov al, 4
mov ah, 12
mov ax, 3ah
mov al, 11110000b
mov ax, 1001111b

; Si empiezo con letra (A,B,C,D,E,F)
; tiene que llevar un 0 (cero) antes
; de la letra.
;
; Si modifico la parte H(igh) o L(ow)
; de un registro lo que sobra queda
; intacto.