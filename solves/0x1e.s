;; converts the number in `al` to it's corresponding ascii
;; like al = 0x3 -> 0x33 = '3'

cmp al, 0x0a
sbb al, 0x69
das
