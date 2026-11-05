;; checks if rax is a power of two because
;; rax - 1 will have every bit set. So the
;; `and` will set rax to 0 if it is a power
;; of two, rax - 1 otherwise                   
    
mov rdx, rax
dec rax
and rax, rdx
