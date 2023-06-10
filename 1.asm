.model small
.stack 100
.code 
main proc 

MOV AX, decimal_num ; Move decimal number to AX register
MOV CX, 0 ; Set the counter to 0
MOV BX, 8 ; Set BX to 8 for octal conversion
DIV BX ; Divide the number by 8
PUSH DX ; Push the remainder to the stack
INC CX ; Increment the counter
CMP AX, 0 ; Compare the quotient to 0
JNE LOOP ; Jump to LOOP if the quotient is not 0
LOOP:
POP DX ; Pop the remainder from the stack
ADD DL, '0' ; Convert the remainder to ASCII character
MOV AH, 02 ; Set the output function to display the character
INT 21h ; Display the character
DEC CX ; Decrement the counter
JNZ LOOP ; Jump to LOOP if the counter is not 0 
                                                            
                                                            
    MOV AH,4CH;DOS EXIT FUNCTION
   INT 21H ;EXIT TO DOS
   MAIN ENDP
END MAIN
     