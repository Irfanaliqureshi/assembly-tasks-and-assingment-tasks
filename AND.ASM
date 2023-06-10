  .MODEL SMALL
  .DATA
  .CODE 
   
    MAIN PROC 
        
       MOV AH,1
       INT 21H
      
      ;if ('A'  <=  char) and (char  <=  'Z' )
      
      CMP AL,'A'
      
      JNGE END_IF
      
      CMP AL,'Z'
      
      ; Then display char 
      
        MOV DL,AL
        MOV AH,2
        INT 21H
        
        END_IF:
          
  
        
        MOV AH,4CH
        INT 21H
        
        MAIN ENDP
    END MAIN