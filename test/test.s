BITS 64

%assign n 10
    
section .data
    buff1 db 0x00, 0x30, 0x20, 0x40, 0x50, 0x60, 0x70, 0x80, 0x90, 0x00
    buff2 db "BCCaaaaaaaa", 0x0
    
section .text
    global _start
    
_start:
    mov rbx, buff1

    xor eax, eax
    xor edx, edx
    
    .loop1:
        xlatb
        xchg rax, rdx
        xlatb
        xlatb
        xchg rax, rdx
        cmp al, dl
        jnz .loop1
    
    xor eax, eax

    .loop2:
        xlatb
        xchg rax, rdx
        xlatb
        xchg rax, rdx
        cmp al, dl
        jnz .loop2

    .exit:
        mov rax, 0x3c
        mov rdi, 0
        syscall
