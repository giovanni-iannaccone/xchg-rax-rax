;; copies the processor's time in rax 2 times and compares them
;; obviously will always set the cf flag but not the zf

rdtsc
shl rdx, 0x20
or rax, rdx
mov rcx, rax
      
rdtsc
shl rdx, 0x20
or rax, rdx    
      
cmp rcx, rax
