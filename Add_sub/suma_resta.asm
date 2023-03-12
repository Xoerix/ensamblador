section .data
sumatoria db '0'

section .bss
resta resb 1           ; Reserva un byte en memoria

section .text
    global _start
_start:
    ; Addition
    ; Assign a value
    mov eax, 2                ; First value
    mov ebx, 3                ; Second value

    add eax, ebx              ; Add the second value to the first value

    add eax, 48               ; Add 48 bc it takes the value in ASCII; 0 = 48 ->  8 + 48 = 56 -> 8 = 56
    mov [sumatoria], eax      ; Add the value to "Sumatoria"
    
    ; Print "Sumatoria"
    mov eax, 4
    mov ebx, 1
    mov ecx, sumatoria
    mov edx, 1
    int 0x80
    

    ; Substraction
    ; Assing a value
    mov eax, 8                ; First value
    mov ebx, 1                ; Second value
    
    sub eax, ebx              ; substract the second value to the first value

    add eax, 48               ; to ASCII
    mov [resta], eax

    ; Print "Resta"
    mov eax, 4
    mov ebx, 1
    mov ecx, resta
    mov edx, 1
    int 0x80


    ; Finish the program
    mov eax, 0x1
    mov ebx, 0
    int 0x80