WRITE EQU 4
EXIT EQU 1
EXIT_SUCCESS EQU 0
STDOUT EQU 1
global _start

section .rodata
    STR: db "Hello World!", 10, 0
    LEN: db 13

section .text
_start: 
    ; Passing arguments to system call
    mov edx, [LEN] ; Length of buffer
    mov ecx, STR ; Buffer
    mov ebx, STDOUT ; File descriptor

    ; Setting system call to be sys_write
    mov eax, WRITE 
    int 0x80 ; Linux system call

    ; Passing arguments to system call
    mov ebx, EXIT_SUCCESS

    ; Setting system call to be sys_exit
    mov eax, EXIT
    int 0x80 ; Linux system call