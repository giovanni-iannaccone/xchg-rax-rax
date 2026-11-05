;; replaces a byte in 0x8080808080808080
;; with 0x00 in corrispondence of the first
;; occurrence of the byte 0x00 in rax
    
mov rdx, rax
not rdx
mov rcx, 0x8080808080808080
and rdx, rcx
mov rcx, 0x0101010101010101
sub rax, rcx
and rax, rdx
