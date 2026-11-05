;; Puts the address of `pop rax` into rax
;; because call pushes current rip (address of `call`) + 8
;; onto the stack, which is the address of `pop rax`
    
call .next
.next:    
    pop rax
