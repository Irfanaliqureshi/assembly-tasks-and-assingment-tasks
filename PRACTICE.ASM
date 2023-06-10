.MODEL SMALL 
.STACK 100H
.DATA
.CODE 

 MAIN PROC
    
    MOV DL,0 
    MOV AH,1
    INT 21H
    
 WHILE:
    
    CMP AL,'C'
   
             JE END_WHILE
    
    INC DL
    INT 21H
   
             JMP WHILE
    
 END_WHILE:
    
    MOV BL,DL
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,BL
    ADD DL,48
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP 
 END MAIN
      
    