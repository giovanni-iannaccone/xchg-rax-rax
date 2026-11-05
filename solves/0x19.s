;; Really depends on print_str implementation.
;; I guess the intended behavior is to print the
;; "hello world!" string
    
call .skip
db 'hello world!', 0
.skip:    
    call print_str
    add rsp, 8
