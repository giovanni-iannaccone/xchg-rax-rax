;; Average of two numbers, because `rcr rax, 1` is equals to rax / 2
;; Doesn't work for negative numbers

add rax, rdx
rcr rax, 1
