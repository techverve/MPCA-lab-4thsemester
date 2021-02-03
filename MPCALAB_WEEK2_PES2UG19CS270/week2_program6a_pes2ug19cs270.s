.data
      A:.WORD 5,10,15,20,25,30,35,40,45,50
.text
      LDR r0,=A
      MOV r1,#10
      MOV r3,#0
      LOOP:
            CMP r1,#0
            BEQ L1
            LDR r2,[r0],#4
            ADD r3,r3,r2
            SUB r1,r1,#1
            B LOOP
      L1:
          SWI 0x11
.end
