.data
    a: .word
.text
    MOV r0,#6
    LDR r1,=a
    MOV r2,#0
    MOV r3,#1
    STR r2,[r1]
    ADD r1, r1, #4
    STR r3, [r1]

    loop:
        ADD r4, r2, r3
        ADD r1, r1, #4
        STR r4, [r1]
        MOV r2, r3
        MOV r3, r4
        SUB r0, r0, #1
        CMP r0,#0
        BNE loop
        SWI 0x11
.end
