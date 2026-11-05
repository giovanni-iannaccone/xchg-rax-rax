;; finds loops inside of some sort of linked list. 

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
