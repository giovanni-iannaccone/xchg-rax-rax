;; rax = rax * rcx - rdx * rbx
;; rbx = rax * rdx + rbx * rcx
;; rdx = rdx - rcx
;; rdi = rdx * rbx + rcx * rbx
;; rsi = rax * rdx + rbx * rcx

;; rax and rbx are like the multiplication of complex numbers:
;; (rax, rbx i) * (rcx, rdx i)

;; - rax = rax * rcx - rdx * rbx      which is the real part
;; - rbx = rax * rdx + rbx * rcx      which is the imaginary part  
    
mov rsi, rax
add rax, rbx
mov rdi, rdx
sub rdx, rcx
add rdi, rcx
    
imul rax, rcx
imul rsi, rdx
imul rdi, rbx

add rsi, rax
mov rbx, rsi
sub rax, rdi
