;; sets rax to min(rax, rdx)
    
sub rdx, rax
sbb rcx, rcx
and rcx, rdx
add rax, rcx
