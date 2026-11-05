;; it's like a strcmp, but never ends since `loop` checks rcx, not rax
    
.loop:    
    mov dl, byte [rsi]
    xor dl, byte [rdi]
    inc rsi
    inc rdi
    or al, dl
    loop .loop
