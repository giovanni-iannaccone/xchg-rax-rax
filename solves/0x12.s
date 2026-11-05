;; rax = rax + rdx
;; rcx = rdx
;; rdx = rax & rdx

;; I think this snippet is just intended
;; to show a nice (and actually pretty
;; famous) property of logical operators: 

;; rax = (rax | rdx) + (rax & rdx) = rax + rdx
    
mov rcx, rdx
and rdx, rax
or rax, rcx
add rax, rdx
