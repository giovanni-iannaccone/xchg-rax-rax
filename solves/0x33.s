;; x = smallest power of two bigger than rax
;; y = biggest power of two smaller than rax
;; rax = x - rax + y

;; inverse of Gray code
    
mov rdx, rax
shr rdx, 0x1
xor rax, rdx    

mov rdx, rax
shr rdx, 0x2
xor rax, rdx

mov rdx, rax
shr rdx, 0x4
xor rax, rdx

mov rdx, rax
shr rdx, 0x8
xor rax, rdx

mov rdx, rax
shr rdx, 0x10
xor rax, rdx

mov rdx, rax
shr rdx, 0x20
xor rax, rdx
