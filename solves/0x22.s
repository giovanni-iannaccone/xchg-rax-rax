;; Divides rax by 3 and rounds down the result

mov rdx, 0xaaaaaaaaaaaaaaab
mul rdx
shr rdx, 1
mov rax, rdx 
