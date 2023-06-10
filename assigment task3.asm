.model small
.data
array db 100 dup(0)
.code
main proc
    mov ax, @data
    mov ds, ax

    mov si, offset array

    l1:
    mov ah, 1
    int 21h
    cmp al, 13
    je enter
    mov bl, al

    mov [si], bl

    inc si
    loop l1

    enter:
    mov ah, 4ch
    int 21h

main endp
end main