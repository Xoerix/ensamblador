section .bss
    resultado resb 1          ; reserve a memory addres

section .text
    global _start
_start:
    ; Example with a 16 bits memory register
    mov ax, 3
    mov cx, 2

    mul cx                     ; implicitly multiply 3 and 2, then puts the result in dx:ax upper lower parts
    ; the result; 6 fits perfectly in the first 8 bits; ax, so i dont care what could be in dx, probably 0's
    
    add ax, 48                 ; from decimal to ASCII

    mov [resultado], ax        ; alters the buffer content

    ; print the result
    mov eax, 4
    mov ebx, 1
    mov ecx, resultado
    mov edx, 1
    int 0x80


    mov eax, 1
    mov ebx, 0
    int 0x80