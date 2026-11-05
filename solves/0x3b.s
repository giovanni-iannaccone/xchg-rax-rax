;; rax *= 2
    
cdq
shl eax, 1
and edx, 0xc0000401
xor eax, edx
