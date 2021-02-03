.data
    A:.word 7
    B:.word 3
    C:.word
.text
    LDR r0,=A
    LDR r1,=B
    LDR r2,=C
    LDR r3,[r0]
    LDR r4,[r1]
    ADD r5,r3,r4
    MOV r8,r4,LSL #2
    ADD r6,r4,r8
    ADD r7,r6,r5
    STR r7,[r2]
.end
