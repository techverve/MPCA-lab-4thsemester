.data
    A:.word 10,20,30,40,50
    B:.word 10,20,30,40,50
.text
    LDR r0,=A
    LDR r1,=B
    MOV r2,#5
    MOV r5,#0
LOOP:
        LDR r3,[r0],#4
        LDR r4,[r1],#4
        MUL r6,r3,r4
        ADD r5,r5,r6
        SUBS r2,r2,#1
        BNE LOOP
SWI 0x11
.end
