section .data
; Bienvenida y su longitud
bienvenida db "Bienvenido, la suma de tus dos numeros es: ", 0x0a, 0x0d
bienvenidalen equ $ - bienvenida

; Mensaje de despedida
despedida db 0x0a, "Fin del programa", 0x0a, 0x0d
despedidalen equ $ - despedida

section .bss
; Declaracion de la variable donde se almacena el resultado
resultado resb 1


section .text
    global _start
_start:
; Impresion del mensaje de bienvenida
mov eax, 4
mov ebx, 1
mov ecx, bienvenida
mov edx, bienvenidalen
int 0x80

; Suma de dos numeros
mov eax, 4
mov ebx, 5
add eax, ebx
add eax, 48
mov [resultado], eax

; Impresion de la suma de dos numeros
mov eax, 4
mov ebx, 1
mov ecx, resultado
mov edx, 1
int 0x80

; Impresion del mensaje de despedida
mov eax, 4
mov ebx, 1
mov ecx, despedida
mov edx, despedidalen
int 0x80

mov eax, 1
mov ebx, 0
int 0x80