;; It's just ror rax, 7
    
mov rdx, rax
shr rax, 7
shl rdx, 0x39
or rax, rdx
