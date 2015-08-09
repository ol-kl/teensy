; nasm -f elf64 tiny.asm
; gcc -Wall -nostartfiles -O3 -s tiny.o
bits 64
global _start
extern _exit
section .text
_start:
    mov rdi,42 ;System V AMD64 ABI calling conventions
               ;differ from IA32. Leaving orig version
               ;results in returing 200 (or other garbage from EAX)
               ;instead of 42
    call _exit
