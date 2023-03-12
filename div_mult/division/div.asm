section .bss
    resultado resb 1            ;reservar un espacio de memoria

section .text
    global _start
_start:
    ; 16 bits example
    mov bx, 2                   ; in how many parts i want to divide

    mov dx, 0                   ; to prevent any alteration                  div remainder
    mov ax, 8                   ; just the value i want to divide            div quotient
    
    ; 0 + 8 / 2   as a binary operation
    div bx                      ; only takes the bx value, implicitly takes the dx:ax values, then saves the results at their respective places

    add ax, 48                  ; the result (quotient) from decimal to ASCII
    
    mov [resultado], ax         ; alters the buffer content, not the buffer

    ; print the quotient
    mov eax, 4                  ; write syscall
    mov ebx, 1                  ; print at the screen
    mov ecx, resultado          ; memory direct where ir my value
    mov edx, 1                  ; number of bytes to print
    int 0x80

    ; finish
    mov eax, 1                  ; exit syscall
    mov ebx, 0                  ; return 0
    int 0x80

