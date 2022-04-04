section .data
    msg: db "Hello World!", 0xA, 0xD       ;msg, tam = pointers
    tam: equ $- msg

section .text

global _start

_start:
    mov EAX, 0x4
    mov EBX, 0x1
    mov ECX, msg
    mov EDX, tam
    int 0x80

    ; mov -> destino, origem eax = 1
    ; 1 2 3 4 5 6 7 8 9 a b c d e f
    mov EAX, 0x1 ; terminando programa
    mov EBX, 0x0 ; retornando 0
    int 0x80