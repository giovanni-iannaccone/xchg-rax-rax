;; as far as I can notice, it sets the cf flag if
;; rbx is negative but both rax and rcx are not

xor rax, rbx
xor rbx, rcx
mov rsi, rax
add rsi, rbx
cmovc rax, rbx    
xor rax, rbx
cmp rax, rsi
