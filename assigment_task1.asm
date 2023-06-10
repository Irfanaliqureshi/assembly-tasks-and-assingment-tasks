.MODEL SMALL
.STACK 100H
.DATA
    d1 DW 52
.CODE
    MAIN PROC 
        MOV AX, @DATA
        MOV DS, AX

        ; Load the value stored in variable d1
        MOV AX, d1

        ; Convert the value to octal and print the value
        CALL PRINT

        ; Interrupt to exit
        MOV AH, 4CH
        INT 21H

    MAIN ENDP

    PRINT PROC
        ; Initialize count
        MOV CX, 0
        MOV DX, 0

    label1:
        ; If AX is zero, jump to print1
        CMP AX, 0
        JE print1

        ; Initialize BX to 8
        MOV BX, 8

        ; Divide AX by 8 to convert it to octal
        DIV BX

        ; Push the result in the stack
        PUSH DX

        ; Increment the count
        INC CX

        ; Set DX to 0
        XOR DX, DX

        JMP label1

    print1:
        ; Check if the count is greater than zero
        CMP CX, 0
        JE exit

        ; Pop the top of the stack
        POP DX

        ; Add 48 to represent the ASCII value of digits
        ADD DL, 48

        ; Interrupt to print a character
        MOV AH, 02H
        INT 21H

        ; Decrease the count
        DEC CX

        JMP print1

    exit:
        RET

    PRINT ENDP

END MAIN