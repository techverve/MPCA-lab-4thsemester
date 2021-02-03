.data
    A: .WORD 5
    B: .WORD 7
    C:.WORD
.text
    LDR r0,=A
    LDR r1,=B
    LDR r2,=C
    LDR r3,[r1]
    LDR r4,[r0]
    ADD r5,r3,r4
    STR r5,[r2]
.end
