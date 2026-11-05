;; does absolutely nothing
;; `not` flips all the bits, even the sign bit, this corresponds to
;; rax-1, so inc and neg together reset the first operation

not rax
inc rax
neg rax
