.data
      a:.word 1,0,0,4,-5,0,-7,-4,-9
.text
      LDR r0,=a
      MOV r1,#9
      MOV r5,#0
      MOV r4,#0
      MOV r3,#0
      loop:
          CMP r1,#0
          BEQ l4
          SUB r1,r1,#1
          LDR r2,[r0]
          ADD r0,r0,#4
          CMP r2,#0
          BEQ l2
          CMP r2,#0
          BGT l1
          BLT l3
      l1:
          ADD r5,r5,#1
          B loop
      l2:
          ADD r4,r4,#1
          B loop
      l3:
          ADD r3,r3,#1
          B loop
      l4:
          SWI 0x11
.end
