;; (rax & rdx) + (rax ^ rdx) / 2 is the average of rax and rdx

mov rcx, rax
and rcx, rdx

xor rax, rdx
shr rax, 1

add rax, rcx
