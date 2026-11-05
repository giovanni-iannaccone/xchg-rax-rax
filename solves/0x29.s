;; replaces rsi[3:3 + rcx] with rsi[:3]
    
lea rdi, [rsi + 3]
rep movsb
