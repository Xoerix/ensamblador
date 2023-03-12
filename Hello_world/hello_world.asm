global _start

section .text:
_start:
    mov eax, 0x4                   ; write system call
    mov ebx, 1                     ; use stdout
    mov ecx, message               ; use messsage as a buffer
    mov edx, message_length        ; message length
    int 0x80                       ; interrupt system call
    
    ; exit
    
    mov eax, 0x1    ; exit system call
    mov ebx, 0    ; returns 0
    int 0x80

section .data:
    message: db "wawawawa", 0xA
    message_length equ $ - message