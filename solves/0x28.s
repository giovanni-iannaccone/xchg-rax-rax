;; Divides by 2 arbitrary-lenght integer
    
clc    
.loop:    
    rcr byte [rsi], 1
    inc rsi
    loop .loop
