;; xors memory with the previous byte
;; mem[0] ^= al
;; mem[1] ^= mem[0]
;; ...
    
.loop:
    xor byte [rsi], al
    lodsb
    loop .loop
