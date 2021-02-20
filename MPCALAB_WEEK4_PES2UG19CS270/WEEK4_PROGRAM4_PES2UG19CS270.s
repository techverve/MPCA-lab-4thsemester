.data
A: .word 1,3,5,7,9,11,13,15,17
B: .word 0
.text
    LDR r0,=A
    LDR r1,=B
    MOV r3,#3
    MOV r4,#0
    MOV r5,#0
    MOV r2,#4
l1:
    MOV r5,#0
l2:
    MLA r6,r4,r3,r5
    MLA r7,r6,r2,r0
    LDR r8,[r7]
    MLA r9,r6,r2,r1
    STR r8,[r9]
    ADD r5,r5,#1
    CMP r5,r3
    BNE l2
    ADD R4,R4,#1
    CMP R4,R3
    BNE l1
SWI 0x11
