.model small
.data
.code
                      ;no se puede comparar en variables ni cadenas
    mov al,2
    mov bl,5
    
    cmp al,bl 
    
   ; jmp               ;intruccion de salto sin condicion
    
    je sumar          ;instruccionde salto con condiccion
                      ;salta si es igual(j=saltar, e=equal)  
                      
    jne restar        ;Salta con con condicion 
                      ;(j=saltar, n=no, e,equal)
    
                      ;Las instrucciones de salto, necesiran etiquetas 
                      ;que son equivalentes a las subrutinas
    
sumar:                ;las etiquetas deben llevar (:)
    
    add al,bl
    
    jmp fin           ;para indicar 
    
restar:

    sub al,dl
       
     jmp fin
    
fin:   
.exit                 
