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

