; Program that take single character Input  and prints next character on screen.

.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
    
    MOV AH,1
    INT 21H
    
   INC AL
   MOV DL,AL 
   
  
   
   MOV AH,2
   INT 21H 
   
   
   
   MOV AH,4CH
   INT 21H
   
   MAIN ENDP
END MAIN