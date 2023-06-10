
  INCLUDE Irvine32.inc
 
 .MODEL SMALL 
 
 .STACK 100H
 
  .data
     
     array BYTE 1,2,3,4,5
     
  .code 
       MAIN PROC 
        
         MOV EAX,0
         MOV ESI,LENGTHOF array
         MOV ECX,SIZEOF array
         
       L1:
       
         dec esi
         mov al,array[esi]
         call written 
         call crlf 
         LOOP L1
         
       exit 
       
        main ENDP 
       
       END MAIN 