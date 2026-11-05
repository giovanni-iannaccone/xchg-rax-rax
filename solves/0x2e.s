;; rdx = rax - 1;
;; if (rax % 2)
;;     rax = 0;
;; else
;;     rax = nearest power of two - rax - 1;
    
mov rdx, rax
dec rdx
xor rax, rdx
shr rax, 1
cmp rax, rdx
