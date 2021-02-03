.data
      A: .HWORD 5
      B: .HWORD 7
      C:.HWORD
.text
      LDR r0,=A
      LDR r1,=B
      LDR r2,=C
      LDRH r3,[r1]
      LDRH r4,[r0]
      ADD r5,r3,r4
      STRH r5,[r2]
.end
