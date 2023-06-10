.MODEL SMALL
.STACK 100H
.DATA

ARR DB 8,9,5,3
RESULT DB ?

.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS, AX
    
    MOV CX,4
    MOV BL, 0
    LEA SI ,ARR
    
    
    L1:
    
    MOV AL,[SI]
    CMP AL,BL
    JL L2
    MOV AL,BL
    
    L2:
    
    INC SI
    DEC CX
    
    JNZ L1
    
    MOV RESULT ,BL
    MOV DL ,RESULT
    
    ADD DL,48
    MOV AH,2
    INT 21H
    
    
    MAIN ENDP
    END MAIN
    
    