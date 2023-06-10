
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.MODEL SMALL
.STACK
.DATA
.CODE 

 MAIN PROC 
    ; Display promt
    
    
    MOV DL , '?'    ; Display char function
    MOV AH , 2H     ; Char is '?'
    INT 21H         ; Display it 
    
    ; Input a char
    
    MOV AH,1H    ; Read char function
    INT 21H      ; Intrrupt call and save char in al
    
    MOV BL , AL  ; Save it in Bl
    
    ; Go to new line & carriage return
    
    
    MOV AH,2H    ; Display char function
    MOV DL,0AH   ; Line feed
    INT 21H      ; Execute line feed 
    MOV DL,0DH   ; carriage return
    INT 21H      ; Execute carriage return
    
    ; Display char
    
     MOV DL,BL      ; Retrieve char
     INT 21H        ; And display it
     
     ; return to DOS
     MOV AH,4CH    ; DOS exit function
     INT 21H       ; Exit to DOS 
    
    MAIN ENDP 
 END MAIN 



