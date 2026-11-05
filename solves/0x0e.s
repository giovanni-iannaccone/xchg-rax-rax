;; sets rax to !rax | !rbx
;; sets rcx to !(rax & rbx)

;; the value of rcx and rax will always be equals
    
mov rcx, rax
and rcx, rbx
not rcx

not rax
not rbx
or rax, rbx 
      
cmp rax, rcx
