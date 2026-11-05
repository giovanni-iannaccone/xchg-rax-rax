;; Does nothing, because the first it increments rax, then negates it, incrementing it again restores the original value but negated, another neg gets the value back to rax

inc rax    
neg rax
inc rax 
neg rax
