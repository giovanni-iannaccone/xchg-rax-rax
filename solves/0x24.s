;; determine if rax is even or odd
    
mov rbx, rax
mov rsi, rax    
.loop:    
    mul rbx
    mov rcx, rax

    sub rax, 2
    neg rax
    mul rsi
    mov rsi, rax

    cmp rcx, 1
    ja .loop
    
.exit_loop:    
