;; sets rbx to (rbx & rax) ^ (rcx & rax)
;; sets rax to (rax & rbx & rcx) ^ rbx

;; (rbx & rax) ^ (rax & rbx & rcx) ^ (rcx & rax) = rbx
;; (rbx & rax) ^ rcx ^ (rcx & rax) = rbx
;; (rbx & rax) ^ rax = rbx
;; rbx = rbx

;; This will always evaluate to true
    
mov rdx, rbx
      
xor rbx, rcx
and rbx, rax

and rdx, rax
and rax, rcx
xor rax, rdx

cmp rax, rbx
