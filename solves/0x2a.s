;; Swaps the qword rcx with the qword at 1 in the rbx array
    
mov rsi, rbx
mov rdi, rbx
.loop:
    lodsq
    xchg rax, qword [rbx]
    stosq
    loop .loop
