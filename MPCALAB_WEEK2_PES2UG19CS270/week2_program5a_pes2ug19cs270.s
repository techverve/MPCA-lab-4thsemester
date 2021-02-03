.text
    MOV r0,#4
    MOV r1,#13
    MOV r2,r0
    MOV r3,r1
    LOOP:
        CMP r3,r2
        BEQ L1
        BMI L2
        B L3
    L1:
        SWI 0x011
    L2:
        SUB r2,r2,r3
        B LOOP
    L3:
        SUB r3, r3, r2
        B LOOP
.end
