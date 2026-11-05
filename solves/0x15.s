;; casts from long to int and from int to long
    
mov rdx, 0xffffffff80000000
add rax, rdx
xor rax, rdx
