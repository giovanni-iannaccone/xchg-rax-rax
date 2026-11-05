;; checks if the number of bits set in rax is 
;; even or odd and puts the result in rbx
mov rbx, rax
mov rdx, rbx
mov rcx, 0xaaaaaaaaaaaaaaaa
and rbx, rcx
shr rbx, 1
and rbx, rdx
popcnt rbx, rbx
and rbx, 1

;; checks if the number of bits set in ~rax is 
;; even or odd and puts the result in rax
neg rax
mov rdx, rax
mov rcx, 0xaaaaaaaaaaaaaaaa
and rax, rcx
shr rax, 1
and rax, rdx
popcnt rax, rax
and rax, 1

;; This just reduces every number to one of
;; 4 possible states*, can probably be used
;; to represet directions or coordinates,
;; like an Hilbert curve but I'm not sure
;; this is the intended behaviour
;; https://en.wikipedia.org/wiki/Hilbert_curve

;; * (rax, rdx) in [(1, 0), (0, 1), (-1, 0), (0, -1)]
mov rdx, rax
add rax, rbx
dec rax
neg rax
sub rdx, rbx
