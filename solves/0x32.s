;; rcx = rax
;; rdx = rax // 2
;; rax = 0
    
mov rcx, rax
      
mov rdx, rax
shr rdx, 1
xor rax, rdx
      
popcnt rax, rax
xor rax, rcx
and rax, 1
