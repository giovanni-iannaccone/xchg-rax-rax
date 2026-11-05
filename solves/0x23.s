;; Calculates rax % 3

.loop:    
    cmp rax, 5
    jbe .exit_loop
    mov rdx, rax
    shr rdx, 2
    and rax, 3
    add rax, rdx
    jmp .loop

.exit_loop:          
    cmp rax, 3
    cmc
    sbb rdx, rdx
    and rdx, 3
    sub rax, rdx
