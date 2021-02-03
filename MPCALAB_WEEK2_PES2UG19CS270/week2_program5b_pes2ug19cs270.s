.data
    A:.WORD 23
    B:.WORD 23
    C:.WORD
.text
    LDR r0,=A
    LDR r1,=B
    LDR r4,=C
    LDR r2,[r0]
    LDR r3,[r1]
    LOOP:
          CMP r3,r2
          BEQ L1
          BMI L2
          B L3
    L1:
          STR r3,[r4]
          SWI 0x011
    L2:
          SUB r2,r2,r3
          B LOOP
    L3:
          SUB r3,r3,r2
          B LOOP

.end
