.data
    A: .word 1,3,5,7,9,11,13,15,17
    B: .word 1,3,5,7,9,11,13,15,17
    C: .word 0
.text
    LDR r0,=A
    LDR r1,=B
    LDR r2,=C
    MOV r3,#3
    MOV r4,#0
    MOV r5,#0
l1:
    MOV r5,#0
l2:
    MLA r6,r4,r3,r5
    MOV r3,#4
    MLA r7,r6,r3,r0
    LDR r8,[r7]
    MLA r7,r6,r3,r1
    LDR r9,[r7]
    ADD r9,r9,r8
    MLA r7,r6,r3,r2
    STR r9,[r7]
    MOV r3,#3
    ADD r5,r5,#1
    CMP r5,r3
    BNE l2
    ADD r4,r4,#1
    CMP r4,r3
    BNE l1
    SWI 0x11
