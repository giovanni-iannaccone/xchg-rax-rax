;; Something related to the De Brujin sequence
;; but I can't figure out what

mov rdx, rax
neg rdx
and rax, rdx

mov rdx, 0x218a392cd3d5dbf
mul rdx
shr rax, 0x3a

xlatb
