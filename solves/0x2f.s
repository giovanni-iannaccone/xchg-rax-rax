;; rdx = biggest smaller power of two - 1
;; rax = number of bits set in rcx

xor eax, eax
.loop:
    jrcxz .exit_loop
    inc rax
    mov rdx, rcx
    dec rdx
    and rcx, rdx
    jmp .loop

.exit_loop:
