;; I don't know, this looks like it always
;; sets rax to the first element of the
;; array pointed by rbx, but it can't be
;; this simple
    
xor eax, eax
xor edx, edx

.loop1:
    xlatb
    xchg rax, rdx
    xlatb
    xlatb
    xchg rax, rdx
    cmp al, dl
    jnz .loop1
    
xor eax, eax

.loop2:
    xlatb
    xchg rax, rdx
    xlatb
    xchg rax, rdx
    cmp al, dl
    jnz .loop2
