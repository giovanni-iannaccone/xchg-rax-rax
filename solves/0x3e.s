;; By searching for the values of rax and rdx online
;; i found this https://oeis.org/A246960
;; so apparently, this snippet computes the numbers
;; of the Heighway Dragon Curve (I didn't even knew
;; of it's existence)   
    
mov rdx, rax
shr rdx, 1
xor rax, rdx

popcnt rax, rax
and rax, 0x3
