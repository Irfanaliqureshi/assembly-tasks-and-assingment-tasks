.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

include Irvine32.inc

.code
main proc
    call Clrscr         ; Clear the console screen
    mov eax, 0          ; Set the exit code to 0
    call ExitProcess    ; Exit the program
main endp
end main