.text
      MOV r0,#50
      MOV r1,r0,LSL #2
      ADD r0,r0,r1
      MOV r2,r0,LSL #3
      SUB r0,r2,r0
      SWI 0x11
.end
