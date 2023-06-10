.model small
.stack 100h
.data
.code
main proc
    mov al, 9
    mov bl, 1
    mov cx, 0

root:
    cmp al, 00h
    jz zero
    
    sub al, bl
    jnc no_adjustment
    aas
    
no_adjustment:
    inc cx
    add bl, 02h
    jmp root

zero:
    add cl, 30h
    mov dl, cl

    mov ah, 2
    int 21h

    mov ah, 4ch
    int 21h

main endp
end main