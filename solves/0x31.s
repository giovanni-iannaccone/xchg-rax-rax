;; rcx = rax ^ (rax >> 1)
;; rdx = (rax + 1) ^ ((rax + 1) >> 1)

;; these values are called Gray codes
;; and are widely used in electronics
    
mov rcx, rax
shr rcx, 1
xor rcx, rax

inc rax

mov rdx, rax
shr rdx, 1
xor rdx, rax
      
xor rdx, rcx
