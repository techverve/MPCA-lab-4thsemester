.text
    MOV r0,#3
    MOV r1,#3
    LOOP:
      SUB r0,r0,#1
      MUL r2,r1,r0
      MOV r1,r2
      CMP r0,#1
      BEQ EXIT
      B LOOP
    EXIT:
        SWI 0x11
.end
