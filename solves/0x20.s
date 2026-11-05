;; rcx = ((((((((rax * 4) + rax) * 8) + rax) * 2) + rax) * 2 + rax) * 8) + rax
;;     = rax * 1337
    
mov rcx, rax  
shl rcx, 2
add rcx, rax 
shl rcx, 3
add rcx, rax 
shl rcx, 1
add rcx, rax 
shl rcx, 1
add rcx, rax 
shl rcx, 3
add rcx, rax
