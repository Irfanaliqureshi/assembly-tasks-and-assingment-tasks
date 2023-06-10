.MODEL SMALL
.STACK 100H
.DATA
.CODE  

   MAIN PROC 
    
   ; MOV AH,1
   ; INT 21H 
    MOV AL,0FFH
   
    
    CMP AL,'0'
    JL NEGATIVE 
    JE ZERO
    JG POSITIVE
    
  
    
    NEGATIVE:
       NEG AL
       MOV BL,AL
       MOV DL,'-'
       MOV AH,2
       INT 21H
       JMP END_CASE
       
       ZERO:
       
        MOV BL,0
        JMP END_CASE
        
       POSITIVE:
        
        MOV BL,AL
        JMP END_CASE
       
       END_CASE:
          
          MOV DL,BL
          ADD DL,48
          MOV AH,2
          INT 21H
          
          MOV AH,4CH
          INT 21
          
        MAIN ENDP
   END MAIN