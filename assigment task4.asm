.model small
.data
array db 1,2,3,5
length db 0
msg db "Enter The Element You Want To Search: $"
msg1 db 10,13,'The Element Is At Index: $'
msg2 db 10,13,"Sorry Your Element Does'nt Exist! $"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov si,offset array
    mov bx,si
    mov di,offset length
    mov cx,di
    sub cx,bx
    
    mov dx,offset msg
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    
    mov bl,al
    sub bl,48
    
    l1:
    mov bh,[si]
    cmp bl,bh
    je if
    inc si
    loop l1
    else:
    mov dx, offset msg2
    mov ah,9
    int 21h
    mov ah,4ch
    int 21h
    
    if:
    mov dx,offset msg1
    mov ah,9
    int 21h
 
    mov dx,si
    add dx,48
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main