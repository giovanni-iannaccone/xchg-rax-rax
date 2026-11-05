;; rcx = log 2 (rax)
;; rax += rax's least significant bit set
;; rbx = -rax

;; i'm not sure if it is just this
;; or there's something deeper

bsf rcx, rax

mov rdx, rax
dec rdx
or rdx, rax

mov rax, rdx
inc rax

mov rbx, rdx
not rbx
inc rdx
and rdx, rbx
dec rdx

shr rdx, cl
shr rdx, 1

or rax, rdx
