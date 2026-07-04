ldi 2
set r2
ldi 6
set r6

loop:
lda [r2]
sta [r6]

b @loop

