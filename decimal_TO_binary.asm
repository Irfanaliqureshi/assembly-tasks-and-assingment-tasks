.MODEL SMALL
.STACK 100H
.DATA
  
  msg db 'Enter the Decimal Number :$' 
  
  msg1 db 0ah,0dh,'Octal Number is : $'
  
.code 

   main proc 
    
    mov ax,@data
    mov ds,ax
    
    mov ah,09h
    lea dx,msg
    int 21h
    
    mov ah,01h
    int 21h
    
    sub al,48
    mov ah,0
    mov bx,2                                                       
    mov dx,0
    mov cx,0
    
   again:
      
      div bx
      push dx
      inc cx
      cmp ax,0
      jne again
      
      mov ah,09h
      lea dx,msg1
      int 21h
      
      disp:
      
      pop dx
      add dx,48
      mov ah,02h
      int 21h
      
      loop disp  
    
    mov ah,4ch
    int 21h
    
    main endp
  end main
  
    
     