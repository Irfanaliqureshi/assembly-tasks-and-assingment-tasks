.MODEL SMALL 
.STACK 100H
.DATA 
.CODE 
 
 MAIN PROC FAR
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AX,0600H
    MOV BX,07
    MOV CX,0000
    MOV DX,104FH
    INT 10H
    MOV AH,02
    MOV BH,00
    MOV DL,39
    MOV DH,12
    INT 10H
    MOV AH,01
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP 
 END MAIN 