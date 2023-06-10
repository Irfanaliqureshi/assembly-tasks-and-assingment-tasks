
; Print all A To Z Character     using jump statement... 

.MODEL SMALL
.STACK 100H
.DATA
.CODE

 MAIN PROC 
    
   mov ah,2
   mov cx,26
   mov dl,65
   print_loop:
   int 21h
   inc dl
   dec cx
   jnz print_loop:
   

    
   
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN 






