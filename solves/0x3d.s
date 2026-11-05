;; if (rax % 2) {
;;     rax--;
;;     rdx = 1;
;; } else {
;;     rax++;
;; }

mov rcx, 1
.loop:
    xor rax, rcx
    not rax    
    and rcx, rax
    not rax

    xor rdx, rcx
    not rdx
    and rcx, rdx
    not rdx

    shl rcx, 1
    jnz .loop
