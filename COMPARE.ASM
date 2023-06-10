.MODEL SMALL
.STACK 100H
.CODE 
MAIN PROC
    MOV AH,1
    INT 21H
    ;IF('A' <"CHAR> AND <CHAR <='Z')
    CMP AL,'A'
    JNGE END_IF
    CMP AL,'Z'
    JNLE END_IF
    ;THEN DISPLAY THE CHAR
    MOV DL,AL
    MOV AH,2
    INT 21H
    
    END_IF:
    MOV AH,4CH
    INT 21H
  
  
   MOV AH,4CH;DOS EXIT FUNCTION
   INT 21H ;EXIT TO DOS
   MAIN ENDP
END MAIN
     
     