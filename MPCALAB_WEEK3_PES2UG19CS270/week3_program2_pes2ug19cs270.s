.data
    a: .word 1,3,5,7,11
    b: .word 0,0,0,0,0

.text

    LDR r0, =a
    LDR r1, =b
    MOV r2, #5
    loop:
        LDR r3, [r0]
        STR r3, [r1]
        ADD r0, r0, #4
        ADD r1, r1, #4
        SUB r2, r2, #1
        CMP r2, #0
        BNE loop
    SWI 0x11
.end
