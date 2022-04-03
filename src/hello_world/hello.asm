section .data
    msg: db "Hello World!", 0xa         ;msg, tam = pointers
    tam: equ $- msg

section .text

global _start

_start:
    mov eax, 0x4
    mov ebx, 0x1
    mov ecx, msg
    mov edx, tam
    int 0x80

    ; mov -> destino, origem eax = 1
    ; 1 2 3 4 5 6 7 8 9 a b c d e f
    mov eax, 0x1 ; terminando programa
    mov ebx, 0x0 ; retornando 0
    int 0x80