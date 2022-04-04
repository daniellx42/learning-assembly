segment .data
    LF equ 0xA ; line feed
    NULL equ 0xD ; null
    SYS_CALL equ 0x80 ; send information to the system
    ; eax
    SYS_EXIT equ 0x1 ; exit
    SYS_READ equ 0x3 ; read
    SYS_WRITE equ 0x4 ; write
    ;ebx
    RET_EXIT equ 0x0 ; return
    STD_IN equ 0x0 ; input pattern
    STD_OUT equ 0x1 ; output pattern


section .data
    msg: db "Enter with your name!", LF, NULL
    tam: equ $- msg

section .bss
    name: resb 1

section .text

global _start

_start:
    mov EAX, SYS_WRITE
    mov EBX, STD_OUT
    mov ECX, msg
    mov EDX, tam
    int SYS_CALL

    mov EAX, SYS_READ
    mov EBX, STD_IN
    mov ECX, name
    mov EDX, $ - 0xA
    int SYS_CALL

    mov EAX, SYS_EXIT
    mov EBX, RET_EXIT
    int SYS_CALL
    ;test