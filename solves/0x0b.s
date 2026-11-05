;; Performs a `neg` or `not` based on rax's value
    
not rdx
neg rax
sbb rdx, -1
