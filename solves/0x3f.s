;; rax, rbx, rcx, rdx and rdi are like the Tower
;; of Hanoi (?) and it computes the raxth move
    
mov rbx, 3
mov r8, rax
mov rcx, rax
dec rcx

and rax, rcx
xor edx, edx
div rbx
mov rsi, rdi
      
mov rax, r8
or rax, rcx
xor edx, edx
div rbx
inc rdx
cmp rdx, rbx
sbb rdi, rdi
and rdi, rdx

bsf rax, r8
