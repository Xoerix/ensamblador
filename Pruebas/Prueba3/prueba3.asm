section .bss
resultado resb 1 ; Reservo un byte de memoria

section .text
    global _start:
_start:

mov bx, 2 ; entre cuanto quiero dividir

mov dx, 0 ; asignamos 0 para evitar errores al apartado donde guarda el residuo
mov ax, 8 ; el numero que queremos dividir

div bx ; solo se dice que queremos dividir entre 2 y se sobre entiende que quiero dividir el 8

add ax, 48 ; se convierte el resultado de la division en ascii para su impresion

mov [resultado], ax ; se guarda el resultado en la "variable" reservada

; Se imprime el resultado
mov eax, 4
mov ebx, 1
mov ecx, resultado
mov edx, 1
int 0x80

; fin del programa
mov eax, 1
mov ebx, 0
int 0x80