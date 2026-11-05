;; fibonacci sequence

.loop:
    xadd     rax, rdx
    loop     .loop
