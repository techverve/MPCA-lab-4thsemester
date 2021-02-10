.data
    a: .word 1,2,3,4,5
.text
    LDR r0, =a
    MOV r3, #5
    loop:
        MOV r2,#7
        LDR r1, [r0]
        ADD r0, r0, #4
        CMP r1, r2
        BEQ l1
        SUBS r3, r3, #1
        BNE loop
    MOV r6, #-1
    SWI 0x11
    l1:
        RSB r7,r3,#6
        SWI 0x11
.end
