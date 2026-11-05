;; rcx = (cx / 2) * 0x101 + (cx % 2) = (cx << 8) + (cx & 1)
;; rax = rax >> cx
    
mov ch, cl
inc ch
shr ch, 1
shr cl, 1
shr rax, cl
xchg ch, cl
shr rax, cl
