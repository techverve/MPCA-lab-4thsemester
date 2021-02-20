.data
    A:.word 10,20,30,40,50
    B:.word 10,20,30,40,50
    C:.word 0,0,0,0,0
.text
    LDR r0,=A
    LDR r1,=B
    LDR r2,=C
    MOV r6,#5
LOOP:
     LDR r3,[r0],#4
     LDR r4,[r1],#4
     MUL r5,r3,r4
     STR r5,[r2],#4
     SUB r6,r6,#1
     CMP r6,#0
     BNE LOOP
SWI 0x11
.end
