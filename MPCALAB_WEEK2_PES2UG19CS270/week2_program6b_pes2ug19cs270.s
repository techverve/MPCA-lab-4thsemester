.data
      A:.BYTE 5,10,15,20,25
.text
      LDR r0,=A
      MOV r1,#5
      MOV r3,#0
      LOOP:
            CMP r1,#0
            BEQ L1
            LDRB r2,[r0],#1
            ADD r3,r3,r2
            SUB r1,r1,#1
            B LOOP
      L1:
          SWI 0x11
.end
