;; rbx[rcx] = 0
;; rbx[rdx] = 1
;; rax = 0

;; rbx[0] = rsi
;; rbx[1] = rdi
;; rax = rbx[0] = rsi

;; even though it doesn't look, this is like
;; rax = (rcx == rdx) ? rdi : rsi
    
mov qword [rbx + 8*rcx], 0
mov qword [rbx + 8*rdx], 1
mov rax, qword [rbx + 8*rcx]
    
mov qword [rbx], rsi
mov qword [rbx + 8], rdi
mov rax, qword [rbx + 8*rax]
